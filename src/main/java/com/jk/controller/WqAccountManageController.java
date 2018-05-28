package com.jk.controller;

import com.alibaba.fastjson.JSONObject;
import com.jk.model.GrManagerBean;
import com.jk.model.JgManagerBean;
import com.jk.model.QUserBean;
import com.jk.model.QyManagerBean;
import com.jk.service.WqAccountManageService;
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
 * Created by ASUS on 2018/5/16.
 */
@Controller
@RequestMapping("/wqAccountManageController")
public class WqAccountManageController {
    @Autowired
    private WqAccountManageService wqAccountManageService;
    //查询账户信息
    @ResponseBody
    @RequestMapping("/queryAccountManage")
    public JSONObject queryAccountManage(Integer offset,Integer limit, QUserBean qUserBean,String registerdatestary,String registerdateend){
        JSONObject json = wqAccountManageService.queryAccountManage(offset,limit,qUserBean,registerdatestary,registerdateend);
        return json;
    }
    //导出账户信息
    @RequestMapping("/ExceportAccount")
    public void ExceportAccount(HttpServletResponse response){
        String title ="账号列表";
        String [] rowName = {"序号","用户名","联系电话","邮箱","状态","注册来源","注册时间","用户类型","业务员工号"};
        List<Object[]> dataList = new ArrayList<Object[]>();
        List<QUserBean> list = wqAccountManageService.queryAccount();
        Object[] obj = null;
        for (int i = 0; i < list.size(); i++) {
            obj = new Object[rowName.length];
            obj[0] = list.get(i).getUserid();
            obj[1] = list.get(i).getUsername();
            obj[2] = list.get(i).getUserphone();
            obj[3] = list.get(i).getUseremily();
            obj[4] = list.get(i).getUserstate();
            obj[5] = list.get(i).getRegistersource();
            obj[6] = list.get(i).getRegisterdate();
            obj[7] = list.get(i).getUsertype();
            obj[8] = list.get(i).getJobnumber();
            dataList.add(obj);
        }
        ExportExcel exportExcel = new ExportExcel(title, rowName, dataList,response);
        try {
            exportExcel.export();
        } catch (Exception e) {
            e.printStackTrace();
        }
    }
    //锁定
    @ResponseBody
    @RequestMapping("/lockAccount")
    public void lockAccount(QUserBean qUserBean){
        wqAccountManageService.lockAccount(qUserBean);
    }
    //解锁
    @ResponseBody
    @RequestMapping("/deblockingAccount")
    public void deblockingAccount(QUserBean qUserBean){
        wqAccountManageService.deblockingAccount(qUserBean);
    }
    //获取用户名称
    @RequestMapping("/backShowUsername")
    public String backShowUsername(Integer userid, HttpSession session){
        QUserBean qUserBeanname = wqAccountManageService.backShowUsername(userid);
        session.setAttribute("qUserBeanname",qUserBeanname);
        return "tiao/wq/lhuser";
    }
    //拉黑
    @ResponseBody
    @RequestMapping("/blockAccount")
    public void blockAccount(QUserBean qUserBean){
        wqAccountManageService.blockAccount(qUserBean);
    }
    //取消拉黑
    @ResponseBody
    @RequestMapping("/qxBlockAccount")
    public void qxBlockAccount(QUserBean qUserBean){
        wqAccountManageService.qxBlockAccount(qUserBean);
    }
    //添加个人信息
    @ResponseBody
    @RequestMapping("/addGrUser")
    public void addGrUser(QUserBean qUserBean, GrManagerBean grManagerBean){
        wqAccountManageService.addGrUser(qUserBean,grManagerBean);
    }
    //新增企业信息
    @ResponseBody
    @RequestMapping("/addQyUser")
    public void addQyUser(QUserBean qUserBean,QyManagerBean qyManagerBean){
        wqAccountManageService.addQyUser(qUserBean,qyManagerBean);
    }
    //新增机构信息
    @ResponseBody
    @RequestMapping("/addJgUser")
    public void addJgUser(QUserBean qUserBean,JgManagerBean jgManagerBean){
        wqAccountManageService.addJgUser(qUserBean,jgManagerBean);
    }
}
