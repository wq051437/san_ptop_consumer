package com.jk.controller;

import com.jk.model.UserBean;
import com.jk.service.UserService;
import com.jk.util.RandomNum;
import com.jk.util.SendCode;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;
import java.io.IOException;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;


/**
 * Created by ASUS on 2018/5/14.
 */
@Controller
@RequestMapping("/userController")
public class UserController {

    @Autowired
    private UserService userService;

    @ResponseBody
    @RequestMapping("/login")
    public String login(UserBean userBean,HttpSession session){
        UserBean   user  =  userService.login(userBean);
        // TODO Auto-generated catch block
        if (user!=null) {
            session.setAttribute("rr", user);
            session.setAttribute("uu",user.getUsername());
            return "ee";
        }else {
            return 	"userNo";
        }
    }
    //判断与原密码是否相同
    @ResponseBody
    @RequestMapping("panduanmima")
    public   String   panduanmima(String   passw,HttpSession session){
        UserBean rr = (UserBean) session.getAttribute("rr");
        if (passw.equals(rr.getUserpass())){
            return "1";
        }else {
            return "2";
        }
    }
     //修改密码
     @ResponseBody
     @RequestMapping("updatemima")
     public   String    updatemima(String   passwo3,HttpSession session){
         UserBean rr = (UserBean) session.getAttribute("rr");
         Integer userid = rr.getUserid();
         userService.updatemima(userid,passwo3);
         session.removeAttribute("a");
         return "1";
     }
     @ResponseBody
     @RequestMapping("queryrenshu")
     public List queryrenshu(){
         //查询今日新增人数
         SimpleDateFormat sdf=new SimpleDateFormat("yyyy-MM-dd");
         Date  date=new Date();
       Integer   count=  userService.querysaverenshu(sdf.format(date));
        //查询今日登录数
         Integer   count3=  userService.queryloginrenshu(sdf.format(date));
         //历史总用户数
         Integer  count2 =   userService.queryzongrenshu();
         Integer count4 = userService.querydsh();
         Integer count5 = userService.querydcl();
         Integer count6 = userService.querydfb();
         //当前在线人数
           List list=  new ArrayList();
           list.add(count);
           list.add(count2);
           list.add(count3);
           list.add(count4);
           list.add(count5);
           list.add(count6);
     return  list;
     }
    //短信接口调用
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
        request.getSession().setAttribute("number",RandomNum.num);
    }
    @ResponseBody
    @RequestMapping("addpanduanphone")
    public   String   addpanduanphone(String  phone,String  yanzma,HttpServletRequest request,HttpSession session){
        UserBean  userBean=   userService.addpanduanphone(phone);
        session.setAttribute("userBean", userBean);
        String number = (String) request.getSession().getAttribute("number");
        if(number.equals(yanzma)){
            if(userBean!=null){
                return   userBean.getUserpass();
            }else{
                return  "1";
            }
        }else{
            return  "2";
        }
    }
    @ResponseBody
    @RequestMapping("updateusermima")
    public   String  updateusermima(String userpass,HttpSession session){
        UserBean userBean = (UserBean) session.getAttribute("userBean");
        userService.updateusermima(userBean.getUserid(),userpass);
        return  "";
    }
}
