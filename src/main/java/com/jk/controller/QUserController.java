package com.jk.controller;

import com.alibaba.fastjson.JSONObject;
import com.aliyun.oss.OSSClient;
import com.jk.model.*;
import com.jk.service.QUserService;
import com.jk.util.*;
import org.apache.commons.fileupload.disk.DiskFileItem;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.multipart.commons.CommonsMultipartFile;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileNotFoundException;
import java.io.IOException;
import java.net.URL;
import java.text.SimpleDateFormat;
import java.util.*;

/**
 * Created by new鹏 on 2018/5/18.
 */
@Controller
@RequestMapping("quserController")
public class QUserController {

    @Resource
    private QUserService qUserService;

    @ResponseBody
    @RequestMapping("login")
    public    String   login(QUserBean  qUserBean,HttpSession session){
        QUserBean  qUserBean1=   qUserService.login(qUserBean);

        if (qUserBean1!=null) {
            if(qUserBean1.getUserstate().equals("启用")){
                session.setAttribute("quser", qUserBean1);
                session.setAttribute("qname",qUserBean1.getUsername());
                session.setAttribute("quserid",qUserBean1.getUserid());
                qUserService.updatedate(qUserBean1.getUserid());
                return "ee";
            }else if(qUserBean1.getUserstate().equals("黑名单")){
                return 	"userNo3";
            }else{
                return 	"userNo2";
            }
        }else {
            return 	"userNo";
        }
    }

    //上传头像
    @ResponseBody
    @RequestMapping("uploadFile")
    public   String   uploadFile(String  aa) throws IOException {
        System.out.println(aa);
        return "";
    }
    //获取验证码
    @ResponseBody
    @RequestMapping("/getInterfaceSMS")
    public Map<String  ,Object> getInterfaceSMS(String phone, HttpSession session) {
        Map<String, Object> map = new HashMap<String, Object>();
        Integer state = null;
        if (phone != null && phone != "") {
            int random = (int) ((Math.random() * 9 + 1) * 100000);
            sendSMS(phone, random);
            session.setAttribute("phone", phone);
            session.setAttribute("random", random);
            state = 1;
        } else {
            state = 2;
        }
        map.put("success", state);
        return map;
    }
    //通过 md5 + HTTPclient 调用短信接口
    private void sendSMS(String phone, Integer random) {
        HashMap<String, Object> params = new HashMap<String, Object>();
        params.put("accountSid", ConBean.SMS_selfID);
        params.put("templateid", ConBean.SMS_mobanId);
        params.put("param",random+",5");
        params.put("to",phone);
        params.put("timestamp", ConBean.SMS_Time);
        params.put("sig", Md5Util.getMd532(params.get("accountSid").toString()+ConBean.SMS_PSD+params.get("timestamp").toString()));
        HttpClient.post(ConBean.SMS_URL, params);
    }
    @ResponseBody
    @RequestMapping("gerenxinxi")
    public List gerenxinxi(HttpSession session){
        QUserBean quser = (QUserBean) session.getAttribute("quser");
        String usertype = quser.getUsertype();
        if(usertype.equals("个人")){
            List list=   qUserService.querygerenlist(quser.getUserid());
            return list;
        }else  if(usertype.equals("企业")){
            System.out.println("企业");
        }else if(usertype.equals("机构")){
            System.out.println("机构");
        }
        return (List) quser;
    }

    @ResponseBody
    @RequestMapping("updatemima")
    public   String  updatemima(String userpass,HttpSession session){
        QUserBean quser = (QUserBean) session.getAttribute("quser");
        qUserService.updatemima(quser.getUserid(),userpass);
        return "";
    }
    @ResponseBody
    @RequestMapping("updatejiaoyimima")
    public    String   updatejiaoyimima(String jiaoyi,HttpSession session){
        QUserBean quser = (QUserBean) session.getAttribute("quser");
        qUserService.updatejiaoyimima(jiaoyi,quser.getUserid());
        return "";
    }
    @ResponseBody
    @RequestMapping("uploadfile")
    public   String  uploadfile(@RequestParam("image")MultipartFile multiFile, HttpServletRequest request, HttpServletResponse response,HttpSession session) throws FileNotFoundException {
        String newFileName = UUID.randomUUID().toString()
                + multiFile.getOriginalFilename().substring(multiFile.getOriginalFilename().lastIndexOf("."));
        CommonsMultipartFile cf= (CommonsMultipartFile)multiFile;
        DiskFileItem fi = (DiskFileItem)cf.getFileItem();
        File f = fi.getStoreLocation();
        // endpoint以杭州为例，其它region请按实际情况填写
        String endpoint = "http://oss-cn-qingdao.aliyuncs.com";
        // 云账号AccessKey有所有API访问权限，建议遵循阿里云安全最佳实践，创建并使用RAM子账号进行API访问或日常运维，请登录
        // https://ram.console.aliyun.com 创建
        String accessKeyId = "LTAIvY9PankTiXIj";
        String accessKeySecret = "JQZaTM0HkK6EydBznb3G0Qnhvg0uj1";
        // 创建OSSClient实例
        // OSSClient是OSS服务的Java客户端，它为调用者提供了一系列的方法，用于和OSS服务进行交互。
        OSSClient ossClient = new OSSClient(endpoint, accessKeyId, accessKeySecret);
        FileInputStream fis = new FileInputStream(f);
        ossClient.putObject("zyloss", "img/" + newFileName, fis);
        Date expiration = new Date(System.currentTimeMillis() + 3600 * 1000 * 24 * 9);
        URL url = ossClient.generatePresignedUrl("zyloss", "img/" + newFileName, expiration);
        String fileUrl = url.toString();
        System.out.println("成功");
        System.out.println(fileUrl);
        QUserBean quser = (QUserBean) session.getAttribute("quser");
        qUserService.addphoto(fileUrl,quser.getUserid());
        return fileUrl;
    }
    @ResponseBody
    @RequestMapping("addphotolist")
    public   String   addphotolist(String  qname){
        String  photourl = qUserService.addphotolist(qname);
        return photourl;
    }

    @ResponseBody
    @RequestMapping("queryeducationlistlist")
    public JSONObject queryeducationlistlist(Integer offset, Integer limit,HttpSession session){
        QUserBean quser = (QUserBean) session.getAttribute("quser");
        JSONObject json=  qUserService.queryeducationlistlist(offset,limit,quser.getUserid());
        return json;
    }

    @ResponseBody
    @RequestMapping("addeducationlist")
    public    String   addeducationlist(EducationBean educationBean,HttpSession session){
        QUserBean quser = (QUserBean) session.getAttribute("quser");
        educationBean.setUserid(quser.getUserid());
        qUserService.addeducationlist(educationBean);
        return "";
    }
    @ResponseBody
    @RequestMapping("queryupdatelist")
    public List queryupdatelist(Integer stuid  ){
        List  list=     qUserService.queryupdatelist(stuid);
        return list;
    }
    @ResponseBody
    @RequestMapping("updateeducationlist")
    public   String  updateeducationlist(EducationBean educationBean){
        qUserService.updateeducationlist(educationBean);
        return "";
    }
    @ResponseBody
    @RequestMapping("queryworklist")
    public JSONObject queryworklist(Integer offset, Integer limit,HttpSession session){
        QUserBean quser = (QUserBean) session.getAttribute("quser");
        JSONObject json=  qUserService.queryworklist(offset,limit,quser.getUserid());
        return json;
    }
    @ResponseBody
    @RequestMapping("queryaddresslist")
    public List queryaddresslist(){
        List    list=       qUserService.queryaddresslist();
        return   list;
    }
    @ResponseBody
    @RequestMapping("addworklist")
    public   String  addworklist(WorkBean workBean, HttpSession session){
        QUserBean quser = (QUserBean) session.getAttribute("quser");
        workBean.setUserid(quser.getUserid());
        qUserService.addworklist(workBean);
        return "";
    }
    @ResponseBody
    @RequestMapping("queryupdateworklist")
    public List queryupdateworklist(Integer workid ){
        List list=    qUserService.queryupdateworklist(workid);
        return list;
    }
    @ResponseBody
    @RequestMapping("updateworklist")
    public   String  updateworklist(WorkBean workBean){
        qUserService.updateworklist(workBean);
        return  "";
    }
    @ResponseBody
    @RequestMapping("queryroomlist")
    public JSONObject queryroomlist(Integer offset, Integer limit,HttpSession session){
        QUserBean quser = (QUserBean) session.getAttribute("quser");
        JSONObject json=  qUserService.queryroomlist(offset,limit,quser.getUserid());
        return json;
    }
    @ResponseBody
    @RequestMapping("addroomlist")
    public   String  addroomlist(RoomBean roomBean,HttpSession session){
        QUserBean quser = (QUserBean) session.getAttribute("quser");
        roomBean.setUserid(quser.getUserid());
        qUserService.addroomlist(roomBean);
        return "";
    }
    @ResponseBody
    @RequestMapping("queryupdateroomlist")
    public List queryupdateroomlist(Integer  roomid){
        List  list=    qUserService.queryupdateroomlist(roomid);
        return list;
    }
    @ResponseBody
    @RequestMapping("updateroomlist")
    public   String  updateroomlist(RoomBean roomBean){
        qUserService.updateroomlist(roomBean);
        return  "";
    }

    @ResponseBody
    @RequestMapping("querycarlist")
    public JSONObject querycarlist(Integer offset, Integer limit,HttpSession session){
        QUserBean quser = (QUserBean) session.getAttribute("quser");
        JSONObject json=  qUserService.querycarlist(offset,limit,quser.getUserid());
        return json;
    }
    @ResponseBody
    @RequestMapping("addcarlist")
    public String   addcarlist(CarBean carBean,HttpSession session){
        QUserBean quser = (QUserBean) session.getAttribute("quser");
        carBean.setUserid(quser.getUserid());
        qUserService.addcarlist(carBean);
        return  "";
    }
    @ResponseBody
    @RequestMapping("queryupdatecarlist")
    public List queryupdatecarlist(Integer  carid){
        List  list=qUserService.queryupdatecarlist(carid);
        return  list;
    }
    @ResponseBody
    @RequestMapping("updatecarlist")
    public   String   updatecarlist(CarBean carBean){
        qUserService.updatecarlist(carBean);
        return  "";
    }

    @RequestMapping("duanXin")
    public void sendCodeServlet(String phone,HttpServletRequest request)throws Exception{
        RandomNum randomNum = new RandomNum();
        RandomNum.num = randomNum.getRandom();
        System.out.println(RandomNum.num);
        try {
            SendCode.sendSms(phone, RandomNum.num,"SMS_136425004");  //调用短信发送接口，三个参数，手机号，验证码，短信模板
        } catch (Exception e) {
            // TODO Auto-generated catch block
            e.printStackTrace();
        }
        request.getSession().setAttribute("number2",RandomNum.num);
    }


    @ResponseBody
    @RequestMapping("addpanduanphone")
    public   String   addpanduanphone(String  phone,String  yanzma,HttpServletRequest request,HttpSession session){

        QUserBean  qUserBean=   qUserService.addpanduanphone(phone);
        session.setAttribute("quser", qUserBean);
        String number = (String) request.getSession().getAttribute("number2");
        if(number.equals(yanzma)){
            if(qUserBean!=null){
                return   qUserBean.getUserpass();
            }else{
                return  "1";
            }
        }else{
            return  "2";
        }
    }

    @ResponseBody
    @RequestMapping("registerpuserlist")
    public   String    registerpuserlist(QUserBean  qUserBean){
        qUserBean.setUserstate("启用");
        qUserBean.setRegistersource("PC注册");
        SimpleDateFormat sim=new SimpleDateFormat("yyyy-MM-dd");
        qUserBean.setRegisterdate(sim.format(new Date()));
        qUserBean.setUsertype("个人");
        qUserService.addpuserlist(qUserBean);
        return "";
    }
}
