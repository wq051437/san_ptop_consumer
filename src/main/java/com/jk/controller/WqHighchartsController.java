package com.jk.controller;

import com.jk.model.Invest;
import com.jk.model.InvestRecord;
import com.jk.service.WqHighchartsService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import javax.servlet.http.HttpSession;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.List;

/**
 * Created by ASUS on 2018/5/30.
 */
@Controller
@RequestMapping("/wqHighchartsController")
public class WqHighchartsController {
    @Autowired
    private WqHighchartsService wqHighchartsService;
    //会员统计
    @ResponseBody
    @RequestMapping("/highchartsVipTj")
    public List highchartsVipTj(){
        List list = wqHighchartsService.highchartsVipTj();
        return list;
    }
    //余额统计
    @ResponseBody
    @RequestMapping("/highchartsYeTj")
    public List highchartsYeTj(){
        List list = wqHighchartsService.highchartsYeTj();
        return list;
    }
    //借款统计
    @ResponseBody
    @RequestMapping("/highchartsJkTj")
    public List highchartsJkTj(){
        List list = wqHighchartsService.highchartsJkTj();
        return list;
    }
    //查询投资
    @ResponseBody
    @RequestMapping("/queryInvest")
    public List queryInvest(){
        List list = wqHighchartsService.queryInvest();
        return list;
    }
    //跟进ID查询投资信息
    @ResponseBody
    @RequestMapping("/queryInvestById")
    public List queryInvestById(Integer investid, HttpSession session){
        Invest investById = wqHighchartsService.queryInvestById(investid);
        List investRecordById = wqHighchartsService.queryinvestRecordById(investid);
        session.setAttribute("investById",investById);
        return investRecordById;
    }
    //添加投资记录
    @ResponseBody
    @RequestMapping("/addInvestRecord")
    public void addInvestRecord(Integer qiantzid,Double qiantz,HttpSession session,InvestRecord investRecord){
        investRecord.setUserid((Integer) session.getAttribute("quserid"));
        investRecord.setInvestrecordmaney(qiantz);
        investRecord.setInvestid(qiantzid);
        SimpleDateFormat sim = new SimpleDateFormat("yyyy-MM-dd");
        investRecord.setInvestrecordtime(sim.format(new Date()));
        wqHighchartsService.addInvestRecord(investRecord);
    }
}
