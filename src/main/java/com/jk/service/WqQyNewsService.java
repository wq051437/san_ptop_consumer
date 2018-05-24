package com.jk.service;

import com.alibaba.fastjson.JSONObject;
import com.jk.model.QUserBean;
import com.jk.model.QyManagerBean;

import java.util.List;

/**
 * Created by ASUS on 2018/5/22.
 */
public interface WqQyNewsService {
    JSONObject queryQyNews(Integer offset, Integer limit, QUserBean qUserBean, String registerdatestary, String registerdateend, String qyname, String lxrname, String sfyxinvest);

    List<QyManagerBean> ExceportQy();

    List<QUserBean> ExceportAccount();
}
