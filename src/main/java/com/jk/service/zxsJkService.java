package com.jk.service;

import com.jk.model.Personalloan;
import com.jk.model.TArea;

import java.util.List;

/**
 * Created by 左小山 on 2018/5/21.
 */
public interface zxsJkService {

    //查询地区
    List<TArea> queryArea();

    //新增
    void addjiekuan(Personalloan personalloan);
}
