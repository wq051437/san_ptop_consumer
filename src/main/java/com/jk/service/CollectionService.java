package com.jk.service;

import com.alibaba.fastjson.JSONObject;
import com.jk.model.CollectionBean;
import com.jk.model.Online;

import java.util.List;

/**
 * Created by new鹏 on 2018/5/29.
 */
public interface CollectionService {
    /**
     * 新增资料
     * @param collectionBean
     */
    void addunclinelist(CollectionBean collectionBean);

    /**
     * 查询催收记录
     * @param offset
     * @param limit
     * @param loanid
     * @return
     */
    JSONObject querycollectionlist(Integer offset, Integer limit, Integer loanid);

    /**
     * 查询需求数据
     * @param userid
     * @return
     */
    List addchaxuqiu(Integer userid);

    /**
     * 添加线上数据
     * @param online
     */
    void addonlinelist(Online online);

    /**
     * 添加线上邮箱
     * @param online
     */
    void addonclinelist(Online online);

    /**
     *查询线下数据
     * @param offset
     * @param limit
     * @return
     */
    JSONObject queryunderlinelist(Integer offset, Integer limit, String username, String collectiontype, String starttimess, String endtimess);

    /**
     * 查询线上数据
     * @param offset
     * @param limit
     * @return
     */
    JSONObject queryonlinelist(Integer offset, Integer limit, String username, String collectiontype, String starttimess, String endtimess);


    /**
     * 查询催款详情线下
     * @param collectionid
     * @return
     */
    List querydetailsUnderline(Integer collectionid);

    /**
     *
     * 查询催款详情线上
     * @param onlineid
     * @return
     */
    List querydetailsonline(Integer onlineid);

}
