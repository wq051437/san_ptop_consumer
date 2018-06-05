package com.jk.controller;

import com.jk.model.Capital;
import com.jk.model.Companyloan;
import com.jk.model.Personalloan;
import com.jk.model.TArea;
import com.jk.service.zxsJkService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import javax.servlet.http.HttpSession;
import java.util.List;

/**
 * Created by 左小山 on 2018/5/21.
 */
@Controller
@RequestMapping("zxsjkController")
public class zxsjkController {

    @Autowired
    private zxsJkService zxsjkService;


    //查询地区下拉
    @RequestMapping(value="/queryArea")
    @ResponseBody
    public  List<TArea> queryArea(){
        List<TArea> json = zxsjkService.queryArea();
        return json;
    }

        //新增----------------------------------------------------------------------
    @RequestMapping("addjiekuan")
    @ResponseBody
    public String addjiekuan(Personalloan personalloan,Capital capital){
        zxsjkService.addjiekuan(personalloan,capital);
        return "addSuccess";
    }


    //企业新增----------------------------------------------------------------------
    @RequestMapping("addqyjiekuan")
    @ResponseBody
    public String addqyjiekuan(Companyloan companyloan,Capital capital){
        zxsjkService.addqyjiekuan(companyloan,capital);
        return "addSuccess";
    }

    //我的借款-还款中
    @RequestMapping("queryPersonalloan")
    @ResponseBody
    public List<Personalloan> queryPersonalloan(Personalloan personalloan, HttpSession session){
        List<Personalloan> list=zxsjkService.queryPersonalloan(personalloan);
//        session.setAttribute("personalloan",personalloan);
        return list;
    }

}
