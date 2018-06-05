package com.jk.controller;

import com.alibaba.fastjson.JSONObject;
import com.jk.model.Capital;
import com.jk.model.QUserBean;
import com.jk.model.QyManagerBean;
import com.jk.model.Recharge;
import com.jk.service.zxsCZService;
import com.jk.service.zxsJkService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import javax.servlet.http.HttpSession;
import java.util.List;

/**
 * Created by 左小山 on 2018/5/28.
 */
@Controller
@RequestMapping("zxsczController")
public class zxsCZController {

    @Autowired
    private zxsCZService zxsczService;

    //充值金额----------------------------------------------------------------------
    //新增企业信息
    @ResponseBody
    @RequestMapping("/addCZje")
    public void addCZje(Recharge recharge,Capital capital){
        zxsczService.addCZje(recharge,capital);
    }


    @RequestMapping("/queryCapital")
    public void queryCapital(Capital capital,Integer userid, HttpSession session){
        Capital cap = zxsczService.queryCapital(capital,userid);
        session.setAttribute("qcapitalmoney",cap.getCapitalmoney());
        System.out.println(session.getAttribute("qcapitalmoney"));
        //return "tiao/zxs/chongzhi";
    }

    //报表
    @RequestMapping("/queryCapitalaaa")
    @ResponseBody
    public List<Capital> queryReceipt(Capital capital,Integer userid){
        List<Capital> list=zxsczService.queryReceipt(capital,userid);
        return list;
    }






}
