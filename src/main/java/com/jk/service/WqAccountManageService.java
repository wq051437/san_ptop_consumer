package com.jk.service;

import com.alibaba.fastjson.JSONObject;
import com.jk.model.GrManagerBean;
import com.jk.model.JgManagerBean;
import com.jk.model.QUserBean;
import com.jk.model.QyManagerBean;

import java.util.List;

/**
 * Created by ASUS on 2018/5/16.
 */
public interface WqAccountManageService {
    JSONObject queryAccountManage(Integer offset,Integer limit, QUserBean qUserBean,String registerdatestary,String registerdateend);

    List<QUserBean> queryAccount();

    void lockAccount(QUserBean qUserBean);

    void deblockingAccount(QUserBean qUserBean);

    void blockAccount(QUserBean qUserBean);

    void qxBlockAccount(QUserBean qUserBean);

    void addGrUser(QUserBean qUserBean, GrManagerBean grManagerBean);

    QUserBean backShowUsername(Integer userid);

    void addQyUser(QUserBean qUserBean, QyManagerBean qyManagerBean);

    void addJgUser(QUserBean qUserBean, JgManagerBean jgManagerBean);
}
