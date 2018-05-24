package com.jk.service;


import com.jk.model.Personalloan;

import java.util.List;

/**
 * Created by 微星 on 2018/5/16.
 */
public interface PersonalService {

    List<Personalloan> queryPersonalloan(Personalloan personalloan);

    Personalloan queryLoanById(Integer loanid);

//修改审核-------------------------------------------------------------------------------------
    Personalloan queryPersonalloanById(Integer loanid);

    void updateLoan(Personalloan personalloan);
}
