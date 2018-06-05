package com.jk.service;

import com.jk.model.Invest;

import java.util.List;

/**
 * Created by 微星 on 2018/5/31.
 */
public interface InvestService {

    List<Invest> queryInvest(Invest invest);

    Invest queryInvestById(Integer investid);

    void updateInvestById(Invest invest);

    void updateInvesttwo(Invest invest);

    void updateInvests(Invest invest);
}
