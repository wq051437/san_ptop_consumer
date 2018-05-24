package com.jk.service;

import com.alibaba.dubbo.common.json.JSONObject;
import com.jk.model.Creditor;

import java.util.List;

/**
 * Created by 左小山 on 2018/5/16.
 */
public interface CreditorService {


//    long queryCreditorPage();
//
//    List<Creditor> queryCreditorList(int start, int end);

//    List<Creditor> queryCreditorPage(Creditor creditor);
//    JSONObject queryUserPage(Creditor creditor, int page, int rows);


   // JSONObject queryCreditorPage(String username, String jiekuantitle, String startDate, String endDate, Integer claimtype);

    List<Creditor> queryCreditorList(Creditor creditor);

















}
