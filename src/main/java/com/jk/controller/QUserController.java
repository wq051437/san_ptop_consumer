package com.jk.controller;

import com.jk.model.QUserBean;
import com.jk.service.QUserService;
import com.jk.util.ConBean;
import com.jk.util.HttpClient;
import com.jk.util.Md5Util;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import javax.annotation.Resource;
import javax.servlet.http.HttpSession;
import java.io.IOException;
import java.util.Date;
import java.util.HashMap;
import java.util.Map;

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


}
