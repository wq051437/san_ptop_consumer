package com.jk.controller;

import com.alibaba.dubbo.common.json.JSONObject;
import com.jk.model.Creditor;
import com.jk.service.CreditorService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import java.util.List;

/**
 * Created by 左小山 on 2018/5/16.
 */
@Controller
@RequestMapping("creditorController")
public class zxsCreditorController {

    @Autowired
    private CreditorService creditorService;


//    @RequestMapping("/queryCreditorPage")
//    @ResponseBody
//    public List<Creditor> queryCreditorPage(Creditor creditor){
//        List<Creditor> list =creditorService.queryCreditorPage(creditor);
//        return list;
//    }


//    @RequestMapping("queryCreditorPage")
//    @ResponseBody
//    public Object queryCreditorPage(String username,String jiekuantitle,String startDate,String endDate,Integer claimtype){
//        JSONObject json = creditorService.queryCreditorPage(username,jiekuantitle,startDate,endDate,claimtype);
//        return json;
//
//    }
@RequestMapping("queryCreditorPage")
@ResponseBody
public List<Creditor> queryCreditorPage(Creditor creditor){

    List<Creditor> list=creditorService.queryCreditorList(creditor);

    return list;
}








}
