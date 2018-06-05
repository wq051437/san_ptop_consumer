package com.jk.service;

import com.jk.model.Capital;
import com.jk.model.Companyloan;
import com.jk.model.Personalloan;
import com.jk.model.Recharge;

import java.util.List;

/**
 * Created by 微星 on 2018/5/24.
 */
public interface FinanceService {
    List<Recharge> queryrecharge(Recharge recharge);

//放款查询---------------------------------------------------------------------------------------
    List<Personalloan> querylend(Personalloan personalloan);

//修改金额-----------------------------------------------------------------
    List queryLoanByIds(Integer loanid);

    void updateLoanById(Personalloan personalloan, Capital capital);


//查询公司借款-----------------------------------------------------------------
    List<Companyloan> queryCompany(Companyloan companyloan);

//修改公司借款回显-----------------------------------------------------------------
    List queryCompanyById(Integer companyid);

    void updateCompanyById(Companyloan companyloan, Capital capital);
}
