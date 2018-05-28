package com.jk.service;

import com.alibaba.fastjson.JSONObject;
import com.jk.model.Logs;

import java.util.List;

/**
 * Created by 周玉路 on 2018/5/27.
 */
public interface LogService {

    JSONObject addloggerlist(Integer offset, Integer limit);

    List selecttongji();
}
