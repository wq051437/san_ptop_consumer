package com.jk.service;

import com.jk.model.QUserBean;

import java.util.List;

/**
 * Created by new鹏 on 2018/5/18.
 */
public interface QUserService {
    QUserBean login(QUserBean qUserBean);

    void updatedate(Integer userid);

    List querygerenlist(Integer userid);

    /**
     * 修改密码
     * @param userid
     * @param userpass
     */
    void updatemima(Integer userid, String userpass);

    /***
     * 修改交易密码
     * @param jiaoyi
     * @param userid
     */
    void updatejiaoyimima(String jiaoyi, Integer userid);

    /**
     * 添加照片
     * @param fileUrl
     * @param userid
     */
    void addphoto(String fileUrl, Integer userid);

    /**
     * 查询照片
     * @param qname
     * @return
     */
    String addphotolist(String qname);
}
