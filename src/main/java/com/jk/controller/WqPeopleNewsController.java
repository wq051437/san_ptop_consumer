package com.jk.controller;

import com.alibaba.fastjson.JSONObject;
import com.jk.model.CapitalBean;
import com.jk.model.GrManagerBean;
import com.jk.model.QUserBean;
import com.jk.service.WqPeopleNewsService;
import com.jk.util.ExportExcel;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.util.ArrayList;
import java.util.List;
import java.util.Map;

/**
 * Created by ASUS on 2018/5/21.
 */
@Controller
@RequestMapping("/wqPeopleNewsController")
public class WqPeopleNewsController {

    @Autowired
    private WqPeopleNewsService wqPeopleNewsService;

    //查询个人信息
    @ResponseBody
    @RequestMapping("/queryPeopleNews")
    public JSONObject queryPeopleNews(Integer offset,Integer limit, QUserBean qUserBean, String registerdatestary, String registerdateend,String grname){
        JSONObject json = wqPeopleNewsService.queryPeopleNews(offset,limit,qUserBean,registerdatestary,registerdateend,grname);
        return json;
    }
    //回显个人信息
    @RequestMapping("/backShowPeopleNews")
    public String backShowPeopleNews(Integer grid, HttpSession session){
        QUserBean qUserBean = wqPeopleNewsService.backShowPeopleNews(grid);
        session.setAttribute("qUserBean",qUserBean);
        GrManagerBean grManagerBean = wqPeopleNewsService.backShowPeopleNewss(grid);
        session.setAttribute("grManagerBean",grManagerBean);
        session.setAttribute("xiala",qUserBean.getJobnumber());
        return "tiao/wq/updategruser";
    }
    //修改个人信息
    @ResponseBody
    @RequestMapping("/updateGrUser")
    public void updateGrUser(QUserBean qUserBean){
        wqPeopleNewsService.updateGrUser(qUserBean);
    }
    //查询个人基本信息
    @RequestMapping("/selectJbPeopleNews")
    public String selectJbPeopleNews(Integer userid,Integer grid, HttpSession session){
        QUserBean qUserBean = wqPeopleNewsService.selectJbPeopleNews(userid,grid);
        session.setAttribute("grjbxx",qUserBean);
        Integer userids = qUserBean.getUserid();
        CapitalBean capitalBean = wqPeopleNewsService.selectCapital(userids);
        session.setAttribute("grjbxxc",capitalBean);
        GrManagerBean grManagerBean = wqPeopleNewsService.selectJbPeopleNewss(userid,grid);
        session.setAttribute("grjbxxs",grManagerBean);
        return "tiao/wq/selectGrInfor";
    }
    //导出个人信息
    @RequestMapping("/ExceportPeopleNews")
    public void ExceportPeopleNews(HttpServletResponse response){
        String title ="个人信息";
        String [] rowName = {"序号","用户名","姓名","手机号码","身份证","邮箱","状态","业务员工号","注册来源","注册时间"};
        List<Object[]> dataList = new ArrayList<Object[]>();
        List<QUserBean> list = wqPeopleNewsService.ExceportAccount();
        List<GrManagerBean> list2 = wqPeopleNewsService.ExceportPeopleNews();
        Object[] obj = null;
        for (int i = 0; i < list.size(); i++) {
            obj = new Object[rowName.length];
            obj[0] = list2.get(i).getGrid();
            obj[1] = list.get(i).getUsername();
            obj[2] = list2.get(i).getGrname();
            obj[3] = list.get(i).getUserphone();
            obj[4] = list2.get(i).getGridcard();
            obj[5] = list.get(i).getUseremily();
            obj[6] = list.get(i).getUserstate();
            obj[7] = list.get(i).getJobnumber();
            obj[8] = list.get(i).getRegistersource();
            obj[9] = list.get(i).getRegisterdate();
            dataList.add(obj);
        }
        ExportExcel exportExcel = new ExportExcel(title, rowName, dataList,response);
        try {
            exportExcel.export();
        } catch (Exception e) {
            e.printStackTrace();
        }
    }
    //查询个人学历信息
    @ResponseBody
    @RequestMapping("/queryGrEducation")
    public JSONObject queryGrEducation(Integer offset,Integer limit,Integer userid){
        JSONObject json = wqPeopleNewsService.queryGrEducation(offset,limit,userid);
        return json;
    }
    //查询个人工作信息
    @ResponseBody
    @RequestMapping("/queryGrWork")
    public JSONObject queryGrWork(Integer offset,Integer limit,Integer userid){
        JSONObject json = wqPeopleNewsService.queryGrWork(offset,limit,userid);
        return json;
    }
    //查询个人房产信息
    @ResponseBody
    @RequestMapping("/queryGrRoom")
    public JSONObject queryGrRoom(Integer offset,Integer limit,Integer userid){
        JSONObject json = wqPeopleNewsService.queryGrRoom(offset,limit,userid);
        return json;
    }
    //查询个人车产信息
    @ResponseBody
    @RequestMapping("/queryGrCar")
    public JSONObject queryGrCar(Integer offset,Integer limit,Integer userid){
        JSONObject json = wqPeopleNewsService.queryGrCar(offset,limit,userid);
        return json;
    }
    //查询个人借款记录
    @ResponseBody
    @RequestMapping("/queryGrLoanRecord")
    public JSONObject queryGrLoanRecord(Integer offset,Integer limit,Integer userid,String loantitle,String applyloandatestary,String applyloandateend,Integer loanstate){
        JSONObject json = wqPeopleNewsService.queryGrLoanRecord(offset,limit,userid,loantitle,applyloandatestary,applyloandateend,loanstate);
        return json;
    }

}
