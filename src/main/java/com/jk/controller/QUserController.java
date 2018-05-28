package com.jk.controller;

import com.aliyun.oss.OSSClient;
import com.jk.model.QUserBean;
import com.jk.service.QUserService;
import com.jk.util.ConBean;
import com.jk.util.HttpClient;
import com.jk.util.Md5Util;
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
    /*public String getInterfaceSMS(String phone, HttpSession session) throws IOException {
        String ccode = com.jk.util.HttpClient.togetString(phone);
        // 将得到的验证码放入session然后 去判断
        session.setAttribute("ccode", ccode);
        session.setAttribute("fasongtime", new Date().getTime());
        return "1";
    }*/
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

}
