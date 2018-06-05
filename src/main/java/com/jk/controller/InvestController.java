package com.jk.controller;

import com.jk.model.Invest;
import com.jk.service.InvestService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import java.util.List;

/**
 * Created by 微星 on 2018/5/31.
 */
@Controller
@RequestMapping("investController")
public class InvestController {

    @Autowired
    private InvestService investService;

    @RequestMapping("queryInvest")
    @ResponseBody
    public List<Invest> queryInvest(Invest invest){
        List<Invest> querylists = investService.queryInvest(invest);
        return querylists;
    }


    /*查询回显--------------------------------------------------------------------------------------------*/
    @RequestMapping("queryInvestById")
    @ResponseBody
    public Invest queryInvestById(Integer investid){
        Invest invest = investService.queryInvestById(investid);

        return invest;
    }

/*审核----------------------------------------------------------------------------------------------*/
    @RequestMapping("/updateInvestById")
    @ResponseBody
    public void updateInvestById(Invest invest){

        investService.updateInvestById(invest);

    }

/*修改发布----------------------------------------------------------------------------------------------*/
    @RequestMapping("/updateInvesttwo")
    @ResponseBody
    public void updateInvesttwo(Invest invest){

        investService.updateInvesttwo(invest);

    }

/*开始发布----------------------------------------------------------------------------------------------*/
    @RequestMapping("/updateInvests")
    @ResponseBody
    public void updateInvests(Invest invest){

        investService.updateInvests(invest);

    }

}
