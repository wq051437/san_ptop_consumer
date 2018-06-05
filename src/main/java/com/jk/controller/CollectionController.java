package com.jk.controller;

import com.alibaba.fastjson.JSONObject;
import com.jk.model.CollectionBean;
import com.jk.model.Online;
import com.jk.model.UserBean;
import com.jk.service.CollectionService;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import javax.annotation.Resource;
import javax.servlet.http.HttpSession;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.List;

/**
 * Created by new鹏 on 2018/5/29.
 */
@Controller
@RequestMapping("collectionController")
public class CollectionController    {


    @Resource
    private CollectionService collectionService;



    @ResponseBody
    @RequestMapping("addunclinelist")
    public    String   addunclinelist(CollectionBean collectionBean){
        collectionBean.setCollectionline("线下");
        System.out.println(collectionBean);
        collectionService.addunclinelist(collectionBean);
        return  "";
    }

    @ResponseBody
    @RequestMapping("querycollectionlist")
    public JSONObject querycollectionlist(Integer offset, Integer limit,Integer loanid ){
        JSONObject json= collectionService.querycollectionlist(offset,limit,loanid);
        return  json;
    }

      @ResponseBody
      @RequestMapping("addchaxuqiu")
    public List addchaxuqiu(Integer userid ){
        List  list= collectionService.addchaxuqiu(userid);
        return  list;
      }
     @ResponseBody
    @RequestMapping("addunclinelist2")
    public   String  addunclinelist2(Online online,HttpSession session){
         UserBean rr = (UserBean) session.getAttribute("rr");
         online.setOnlinetype("短信");
         SimpleDateFormat    sim   =new SimpleDateFormat("yyyy-MM-dd");
         online.setOnlinetime(sim.format(new Date()));
         online.setOnlinename(rr.getUsername());
         collectionService.addonlinelist(online);
        return   "";
     }
    @ResponseBody
    @RequestMapping("addonclinelist")
    public   String  addonclinelist(Online online,HttpSession session){
        UserBean rr = (UserBean) session.getAttribute("rr");
        online.setOnlinetype("邮箱");
        SimpleDateFormat    sim   =new SimpleDateFormat("yyyy-MM-dd");
        online.setOnlinetime(sim.format(new Date()));
        online.setOnlinename(rr.getUsername());
        collectionService.addonclinelist(online);
        return   "";
    }

    @ResponseBody
    @RequestMapping("queryunderlinelist")
    public JSONObject queryunderlinelist(Integer offset, Integer limit,String  username,String  collectiontype,String  starttimess,String  endtimess){
        JSONObject json= collectionService.queryunderlinelist(offset,limit,username,collectiontype,starttimess,endtimess);
        return  json;
    }
    @ResponseBody
    @RequestMapping("queryonlinelist")
    public JSONObject queryonlinelist(Integer offset, Integer limit,String  username,String  collectiontype,String  starttimess,String  endtimess){
        JSONObject json=   collectionService.queryonlinelist(offset,limit,username,collectiontype,starttimess,endtimess);
        return  json;
    }

    @ResponseBody
    @RequestMapping("querydetailsUnderline")
    public List querydetailsUnderline(Integer  collectionid){
        List  list=   collectionService.querydetailsUnderline(collectionid);
        return   list;
    }
    @ResponseBody
    @RequestMapping("querydetailsonline")
    public List querydetailsonline(Integer  onlineid){
        List  list=   collectionService.querydetailsonline(onlineid);
        return   list;
    }


}
