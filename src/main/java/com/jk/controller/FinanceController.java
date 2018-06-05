package com.jk.controller;

import com.jk.model.Capital;
import com.jk.model.Companyloan;
import com.jk.model.Personalloan;
import com.jk.model.Recharge;
import com.jk.service.FinanceService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import java.util.List;

/**
 * Created by 微星 on 2018/5/24.
 */
@Controller
@RequestMapping("financeController")
public class FinanceController {

    @Autowired
    private FinanceService financeService;

//充值记录查询-----------------------------------------------------------------
    @RequestMapping("queryrecharge")
    @ResponseBody
    public List<Recharge> queryrecharge(Recharge recharge){
        List<Recharge> querylists = financeService.queryrecharge(recharge);
        return querylists;
    }

//查询借款-----------------------------------------------------------------
    @RequestMapping("querylend")
    @ResponseBody
    public List<Personalloan> querylend(Personalloan personalloan){
        List<Personalloan> querylends = financeService.querylend(personalloan);
        return querylends;
    }

//修改金额-----------------------------------------------------------------
    @RequestMapping("queryLoanById")
    @ResponseBody
    public List queryLoanByIds(Integer loanid){
        List querylends = financeService.queryLoanByIds(loanid);

        return querylends;
    }

    @RequestMapping("/updateLoanById")
    @ResponseBody
    public void updateLoanById(Personalloan personalloan, Capital capital){

        financeService.updateLoanById(personalloan,capital);

    }




//查询公司借款-----------------------------------------------------------------
    @RequestMapping("queryCompany")
    @ResponseBody
    public List<Companyloan> queryCompany(Companyloan companyloan){
        List<Companyloan> queryCompanys = financeService.queryCompany(companyloan);
        return queryCompanys;
    }

//修改公司借款回显-----------------------------------------------------------------
    @RequestMapping("queryCompanyById")
    @ResponseBody
    public List queryCompanyById(Integer companyid){
        List queryCompanyId = financeService.queryCompanyById(companyid);

        return queryCompanyId;
    }

    @RequestMapping("/updateCompanyById")
    @ResponseBody
    public void updateCompanyById(Companyloan companyloan, Capital capital){

        financeService.updateCompanyById(companyloan,capital);

    }



}
