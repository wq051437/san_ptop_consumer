package com.jk.controller;

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


    @RequestMapping("queryrecharge")
    @ResponseBody
    public List<Recharge> queryrecharge(Recharge recharge){
        List<Recharge> querylists = financeService.queryrecharge(recharge);
        return querylists;
    }

    @RequestMapping("querylend")
    @ResponseBody
    public List<Recharge> querylend(Personalloan personalloan){
        List<Recharge> querylends = financeService.querylend(personalloan);
        return querylends;
    }




}
