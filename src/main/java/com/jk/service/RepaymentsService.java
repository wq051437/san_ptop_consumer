package com.jk.service;


import com.alibaba.fastjson.JSONObject;

/**
 * Created by new鹏 on 2018/5/17.
 */
public interface RepaymentsService {
    JSONObject queryrepaymentslist(Integer offset, Integer limit);
}
