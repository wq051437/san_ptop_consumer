package com.jk.service;

import com.jk.model.Capital;
import com.jk.model.Recharge;

import java.util.List;

/**
 * Created by 左小山 on 2018/5/28.
 */
public interface zxsCZService {

    void addCZje(Recharge recharge, Capital capital);

    Capital queryCapital(Capital capital, Integer userid);

    //报表
    List<Capital> queryReceipt(Capital capital, Integer userid);
}
