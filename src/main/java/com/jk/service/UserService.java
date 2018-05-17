package com.jk.service;

import com.jk.model.UserBean;

import java.util.List;

/**
 * Created by ASUS on 2018/5/14.
 */
public interface UserService {
    /**
     * 登录
     * @param userBean
     * @return
     */
    UserBean login(UserBean userBean);

    /**
     * 修改密码
     * @param userid
     * @param passwo3
     */
    void updatemima(Integer userid, String passwo3);



    /**
     *查询今日新增数
     * @param format
     */
    Integer querysaverenshu(String format);

    /**
     * 查询总人数
     * @return
     */
    Integer queryzongrenshu();

    /**
     *   查询今日登录人数
     * @param format
     * @return
     */
    Integer queryloginrenshu(String format);
}
