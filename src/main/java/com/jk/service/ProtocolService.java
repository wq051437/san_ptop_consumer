package com.jk.service;

import com.alibaba.fastjson.JSONObject;
import com.jk.model.Protocol;

import java.util.List;

/**
 * Created by 周玉路 on 2018/5/16.
 */
public interface ProtocolService {
    JSONObject queryProtocolList(Integer offset, Integer limit, Protocol protocol, String startdate, String enddate, String grname);

    void updateProtocol();

    void updatelist(Integer protocolid);
}
