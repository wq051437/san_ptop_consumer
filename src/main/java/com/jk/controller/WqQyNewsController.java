package com.jk.controller;

import com.alibaba.fastjson.JSONObject;
import com.jk.model.GrManagerBean;
import com.jk.model.JgManagerBean;
import com.jk.model.QUserBean;
import com.jk.model.QyManagerBean;
import com.jk.service.WqQyNewsService;
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
@RequestMapping("/wqQyNewsController")
public class WqQyNewsController {
    @Autowired
    private WqQyNewsService wqQyNewsService;
    //查询企业信息
    @ResponseBody
    @RequestMapping("/queryQyNews")
    public JSONObject queryQyNews(Integer offset, Integer limit, QUserBean qUserBean, String registerdatestary, String registerdateend, String qyname,String lxrname,String sfyxinvest){
        JSONObject json = wqQyNewsService.queryQyNews(offset,limit,qUserBean,registerdatestary,registerdateend,qyname,lxrname,sfyxinvest);
        return json;
    }
    //导出企业信息
    @RequestMapping("/ExceportQy")
    public void ExceportQy(HttpServletResponse response){
        String title ="机构信息";
        String [] rowName = {"序号","企业账号","企业名称","联系人名称","联系人电话","营业执照/社会信用代码","注册时间","状态","是否允许投资"};
        List<Object[]> dataList = new ArrayList<Object[]>();
        List<QUserBean> list = wqQyNewsService.ExceportAccount();
        List<QyManagerBean> list2 = wqQyNewsService.ExceportQy();
        Object[] obj = null;
        for (int i = 0; i < list.size(); i++) {
            obj = new Object[rowName.length];
            obj[0] = list2.get(i).getQyid();
            obj[1] = list.get(i).getUsername();
            obj[2] = list2.get(i).getQyname();
            obj[3] = list2.get(i).getLxrname();
            obj[4] = list.get(i).getUserphone();
            obj[5] = list2.get(i).getDobusiness();
            obj[6] = list.get(i).getRegisterdate();
            obj[7] = list.get(i).getUserstate();
            obj[8] = list2.get(i).getSfyxinvest();
            dataList.add(obj);
        }
        ExportExcel exportExcel = new ExportExcel(title, rowName, dataList,response);
        try {
            exportExcel.export();
        } catch (Exception e) {
            e.printStackTrace();
        }
    }
    //回显企业信息
    @RequestMapping("/backShowQy")
    public String backShowQy(Integer qyid, HttpSession session){
        QUserBean qUserBean = wqQyNewsService.backShowQy(qyid);
        session.setAttribute("qUserBeanqy",qUserBean);
        QyManagerBean qyManagerBean = wqQyNewsService.backShowQys(qyid);
        session.setAttribute("qyManagerBean",qyManagerBean);
        session.setAttribute("xiala",qUserBean.getJobnumber());
        return "tiao/wq/updateqyuser";
    }
    //修改企业信息
    @ResponseBody
    @RequestMapping("/updateQyUser")
    public void updateQyUser(QyManagerBean qyManagerBean){
        wqQyNewsService.updateQyUser(qyManagerBean);
    }
}
