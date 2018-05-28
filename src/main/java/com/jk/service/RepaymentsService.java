package com.jk.service;


import com.alibaba.fastjson.JSONObject;
import com.jk.model.Personalloan;

/**
 * Created by new鹏 on 2018/5/17.
 */
public interface RepaymentsService {
    JSONObject queryrepaymentslist(Integer offset, Integer limit, Personalloan personalloan2, String starttime, String endtime);
    JSONObject queryrepaymentslist2(Integer offset, Integer limit, Personalloan personalloan2);

    JSONObject queryrepaymentslist3(Integer offset, Integer limit, Personalloan personalloan2);
}
