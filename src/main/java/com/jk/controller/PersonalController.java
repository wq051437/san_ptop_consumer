package com.jk.controller;


import com.jk.model.Personalloan;
import com.jk.service.PersonalService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import javax.servlet.http.HttpServletRequest;
import java.util.List;

/**
 * Created by 微星 on 2018/5/16.
 */
@Controller
@RequestMapping("personalController")
public class PersonalController {

    @Autowired
    private PersonalService personalService;

    @RequestMapping("queryPersonalloan")
    @ResponseBody
    public List<Personalloan> queryPersonalloan(Personalloan personalloan){
        List<Personalloan> querylist = personalService.queryPersonalloan(personalloan);
        return querylist;
    }

/*查询回显--------------------------------------------------------------------------------------------*/
    @RequestMapping("queryLoanById")
    @ResponseBody
    public Personalloan queryLoanById(Integer loanid){
        Personalloan personalloan = personalService.queryLoanById(loanid);
        System.out.println(personalloan);
        return personalloan;
    }

    @RequestMapping("/queryPersonalloanById")
    public String queryPersonalloanById(Integer loanid,HttpServletRequest request){
        Personalloan personalloan=new Personalloan();
        personalloan = personalService.queryPersonalloanById(loanid);
        request.setAttribute("personalloan", personalloan);
        return "updateloan";
    }

    @RequestMapping("/updateLoan")
    @ResponseBody
    public String updateLoan(Personalloan personalloan){
            personalService.updateLoan(personalloan);
        return "success";
    }


}
