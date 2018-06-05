package com.jk.service;

import com.jk.model.Capital;
import com.jk.model.Companyloan;
import com.jk.model.Personalloan;
import com.jk.model.TArea;

import java.util.List;

/**
 * Created by 左小山 on 2018/5/21.
 */
public interface zxsJkService {

    //查询地区
    List<TArea> queryArea();

    ///个人借款
    void addjiekuan(Personalloan personalloan, Capital capital);
    //企业借款
    void addqyjiekuan(Companyloan companyloan, Capital capital);
    //我的借款-还款中
    List<Personalloan> queryPersonalloan(Personalloan personalloan);
}
