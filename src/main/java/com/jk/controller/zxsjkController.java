package com.jk.controller;

import com.jk.model.Personalloan;
import com.jk.model.TArea;
import com.jk.service.zxsJkService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

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
    public String addjiekuan(Personalloan personalloan){
        System.out.println("11111111111");
        System.out.println(personalloan);
       zxsjkService.addjiekuan(personalloan);
        return "addSuccess";
    }

}
