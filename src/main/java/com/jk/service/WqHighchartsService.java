package com.jk.service;

import com.jk.model.Invest;
import com.jk.model.InvestRecord;

import java.util.List;

/**
 * Created by ASUS on 2018/5/30.
 */
public interface WqHighchartsService {
    List highchartsVipTj();

    List highchartsYeTj();

    List highchartsJkTj();

    List queryInvest();

    Invest queryInvestById(Integer investid);

    List queryinvestRecordById(Integer investid);

    void addInvestRecord(InvestRecord investRecord);
}
