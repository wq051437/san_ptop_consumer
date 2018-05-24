package com.jk.service;

import com.jk.model.QUserBean;

/**
 * Created by new鹏 on 2018/5/18.
 */
public interface QUserService {
    QUserBean login(QUserBean qUserBean);

    void updatedate(Integer userid);
}
