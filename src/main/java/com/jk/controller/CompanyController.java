package com.jk.controller;

import com.jk.model.Companyloan;
import com.jk.service.CompanyService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import java.util.List;

/**
 * Created by 微星 on 2018/5/23.
 */
@Controller
@RequestMapping("companyController")
public class CompanyController {

    @Autowired
    private CompanyService companyService;

    @RequestMapping("queryCompanyloanloan")
    @ResponseBody
    public List<Companyloan> queryCompanyloanloan(Companyloan companyloan){
        List<Companyloan> querylists = companyService.queryCompanyloanloan(companyloan);
        return querylists;
    }

    /*查询回显--------------------------------------------------------------------------------------------*/
    @RequestMapping("queryLoanById")
    @ResponseBody
    public Companyloan queryLoanByIds(Integer companyid){
        Companyloan companyloan = companyService.queryLoanById(companyid);

        return companyloan;
    }



    @RequestMapping("/updateLoan")
    @ResponseBody
    public String updateLoan(Companyloan companyloan){
        companyService.updateLoan(companyloan);
        return "success";
    }
}
