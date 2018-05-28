package com.jk.controller;

import com.alibaba.fastjson.JSONObject;
import com.jk.model.Personalloan;
import com.jk.service.RepaymentsService;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import javax.annotation.Resource;
import javax.servlet.http.HttpSession;

/**
 * Created by new鹏 on 2018/5/17.
 */
@Controller
@RequestMapping("repaymentsController")
public class RepaymentsController {

      @Resource
      private RepaymentsService repaymentsService;

    @ResponseBody
    @RequestMapping("repaymentslist")
    public JSONObject repaymentslist(Integer offset, Integer limit, HttpSession session, Personalloan personalloan2, String  starttime, String  endtime){
        JSONObject json=  repaymentsService.queryrepaymentslist(offset,limit,personalloan2,starttime,endtime);
        String b = json.get("b").toString();
        String rows = json.get("rows").toString();
        session.setAttribute("b",b);
        session.setAttribute("row",rows);
        return json;
    }
    @ResponseBody
    @RequestMapping("repaymentslist2")
    public JSONObject repaymentslist2(Integer offset, Integer limit, HttpSession session, Personalloan  personalloan2){
        JSONObject json=  repaymentsService.queryrepaymentslist2(offset,limit,personalloan2);
        String b2 = json.get("b2").toString();
        session.setAttribute("b2",b2);
        return json;
    }
    @ResponseBody
    @RequestMapping("repaymentslist3")
    public JSONObject repaymentslist3(Integer offset, Integer limit,HttpSession session,Personalloan  personalloan2){
        JSONObject json=  repaymentsService.queryrepaymentslist3(offset,limit,personalloan2);
        String b3 = json.get("b3").toString();
        session.setAttribute("b3",b3);
        return json;
    }

}
