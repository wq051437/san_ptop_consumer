package com.jk.service;

import com.alibaba.fastjson.JSONObject;
import com.jk.model.JgManagerBean;
import com.jk.model.QUserBean;

import java.util.List;

/**
 * Created by ASUS on 2018/5/22.
 */
public interface WqJgNewsService {
    JSONObject queryJgNews(Integer offset, Integer limit, QUserBean qUserBean, String registerdatestary, String registerdateend, String jgname, String lxrname, String sfyxinvest, String sfyxbuy);

    List<QUserBean> ExceportAccount();

    List<JgManagerBean> ExceportJg();

    QUserBean backShowJg(Integer jgid);

    JgManagerBean backShowJgs(Integer jgid);

    void updateJgUser(JgManagerBean jgManagerBean);
}
