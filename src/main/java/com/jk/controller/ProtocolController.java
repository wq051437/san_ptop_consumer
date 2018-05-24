package com.jk.controller;

import com.alibaba.fastjson.JSONObject;
import com.jk.model.Protocol;
import com.jk.service.ProtocolService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import java.util.List;

/**
 * Created by 周玉路 on 2018/5/16.
 */
@Controller
@RequestMapping("/protocolController")
public class ProtocolController {
    @Autowired
    private ProtocolService protocolService;

    public String startdate;
    public String enddate;

    public String getStartdate() {
        return startdate;
    }
    public void setStartdate(String startdate) {
        this.startdate = startdate;
    }
    public String getEnddate() {
        return enddate;
    }
    public void setEnddate(String enddate) {
        this.enddate = enddate;
    }

    @RequestMapping("/selectProtocolLsit")
    @ResponseBody
    public JSONObject selectProtocolLsit(Integer offset ,Integer limit,Protocol protocol,String startdate,String enddate,String  grname){
        System.out.println(protocol);
        JSONObject list = protocolService.queryProtocolList(offset,limit,protocol,startdate,enddate,grname);
        return  list;

    }

    @RequestMapping("updateProtocol")
    public  void updateProtocol(){
        protocolService.updateProtocol();
    }

    @ResponseBody
    @RequestMapping("updatelist")
    public    String  updatelist(Integer  protocolid){
        protocolService.updatelist(protocolid);
        return   "";
    }

}
