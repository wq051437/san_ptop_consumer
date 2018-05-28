package com.jk.service;

import com.jk.model.Personalloan;
import com.jk.model.Recharge;

import java.util.List;

/**
 * Created by 微星 on 2018/5/24.
 */
public interface FinanceService {
    List<Recharge> queryrecharge(Recharge recharge);

//放款查询---------------------------------------------------------------------------------------
    List<Recharge> querylend(Personalloan personalloan);
}
