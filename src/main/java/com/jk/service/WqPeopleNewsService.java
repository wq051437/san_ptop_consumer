package com.jk.service;

import com.alibaba.fastjson.JSONObject;
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
}
