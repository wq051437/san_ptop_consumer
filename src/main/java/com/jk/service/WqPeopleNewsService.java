package com.jk.service;

import com.alibaba.fastjson.JSONObject;
import com.jk.model.CapitalBean;
import com.jk.model.GrManagerBean;
import com.jk.model.QUserBean;

import java.util.List;
import java.util.Map;

/**
 * Created by ASUS on 2018/5/21.
 */
public interface WqPeopleNewsService {
    JSONObject queryPeopleNews(Integer offset,Integer limit, QUserBean qUserBean, String registerdatestary, String registerdateend, String grname);

    QUserBean backShowPeopleNews(Integer grid);

    GrManagerBean backShowPeopleNewss(Integer grid);

    void updateGrUser(QUserBean qUserBean);

    List<GrManagerBean> ExceportPeopleNews();

    List<QUserBean> ExceportAccount();

    CapitalBean selectCapital(Integer userid);

    QUserBean selectJbPeopleNews(Integer userid, Integer grid);

    GrManagerBean selectJbPeopleNewss(Integer userid, Integer grid);

    JSONObject queryGrEducation(Integer offset, Integer limit, Integer userid);

    JSONObject queryGrWork(Integer offset, Integer limit, Integer userid);

    JSONObject queryGrRoom(Integer offset, Integer limit, Integer userid);

    JSONObject queryGrCar(Integer offset, Integer limit, Integer userid);

    JSONObject queryGrLoanRecord(Integer offset, Integer limit, Integer userid, String loantitle, String applyloandatestary, String applyloandateend, Integer loanstate);
}
