package com.jk.controller;

import com.alibaba.fastjson.JSONObject;
import com.jk.model.GrManagerBean;
import com.jk.model.JgManagerBean;
import com.jk.model.QUserBean;
import com.jk.service.WqJgNewsService;
import com.jk.util.ExportExcel;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.util.ArrayList;
import java.util.List;

/**
 * Created by ASUS on 2018/5/22.
 */
@Controller
@RequestMapping("/wqJgNewsController")
public class WqJgNewsController {
    @Autowired
    private WqJgNewsService wqJgNewsService;
    //查询机构信息
    @ResponseBody
    @RequestMapping("/queryJgNews")
    public JSONObject queryJgNews(Integer offset, Integer limit, QUserBean qUserBean, String registerdatestary, String registerdateend, String jgname,String lxrname,String sfyxinvest,String sfyxbuy){
        JSONObject json = wqJgNewsService.queryJgNews(offset,limit,qUserBean,registerdatestary,registerdateend,jgname,lxrname,sfyxinvest,sfyxbuy);
        return json;
    }
    //导出机构信息
    @RequestMapping("/ExceportJg")
    public void ExceportJg(HttpServletResponse response){
        String title ="机构信息";
        String [] rowName = {"序号","机构账号","机构名称","营业执照/社会信用代码","联系人名称","联系人电话","注册时间","状态","是否允许投资","是否允许购买不良债权"};
        List<Object[]> dataList = new ArrayList<Object[]>();
        List<QUserBean> list = wqJgNewsService.ExceportAccount();
        List<JgManagerBean> list2 = wqJgNewsService.ExceportJg();
        Object[] obj = null;
        for (int i = 0; i < list.size(); i++) {
            obj = new Object[rowName.length];
            obj[0] = list2.get(i).getJgid();
            obj[1] = list.get(i).getUsername();
            obj[2] = list2.get(i).getJgname();
            obj[3] = list2.get(i).getDobusiness();
            obj[4] = list2.get(i).getLxrname();
            obj[5] = list.get(i).getUserphone();
            obj[6] = list.get(i).getRegisterdate();
            obj[7] = list.get(i).getUserstate();
            obj[8] = list2.get(i).getSfyxinvest();
            obj[9] = list2.get(i).getSfyxbuy();
            dataList.add(obj);
        }
        ExportExcel exportExcel = new ExportExcel(title, rowName, dataList,response);
        try {
            exportExcel.export();
        } catch (Exception e) {
            e.printStackTrace();
        }
    }
    //回显机构信息
    @RequestMapping("/backShowJg")
    public String backShowJg(Integer jgid, HttpSession session){
        QUserBean qUserBeanjg = wqJgNewsService.backShowJg(jgid);
        session.setAttribute("qUserBeanjg",qUserBeanjg);
        JgManagerBean jgManagerBean = wqJgNewsService.backShowJgs(jgid);
        session.setAttribute("jgManagerBean",jgManagerBean);
        return "tiao/wq/updatejguser";
    }
    //修改机构信息
    @ResponseBody
    @RequestMapping("/updateJgUser")
    public void updateJgUser(JgManagerBean jgManagerBean){
        wqJgNewsService.updateJgUser(jgManagerBean);
    }
}
