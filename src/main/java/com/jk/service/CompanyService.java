package com.jk.service;

import com.jk.model.Companyloan;

import java.util.List;

/**
 * Created by 微星 on 2018/5/23.
 */
public interface CompanyService {
    List<Companyloan> queryCompanyloanloan(Companyloan companyloan);

    Companyloan queryLoanById(Integer companyid);

    void updateLoan(Companyloan companyloan);
}
