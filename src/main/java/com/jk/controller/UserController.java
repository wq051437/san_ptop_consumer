package com.jk.controller;

import com.jk.model.UserBean;
import com.jk.service.UserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

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
         //当前在线人数
           List list=  new ArrayList();
           list.add(count);
           list.add(count2);
           list.add(count3);
     return  list;
     }
    //短信接口调用
    @ResponseBody
    @RequestMapping("/getInterfaceSMS")
    public String getInterfaceSMS(String phone ,HttpSession session) throws IOException {
        String ccode = com.jk.util.HttpClient.togetString(phone);
        // 将得到的验证码放入session然后 去判断
        session.setAttribute("ccode", ccode);
        session.setAttribute("fasongtime", new Date().getTime());
        return "1";
    }
}
