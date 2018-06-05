package com.jk.service;

import com.alibaba.fastjson.JSONObject;
import com.jk.model.*;

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







    /**
     * 查询学历信息
     * @param offset
     * @param limit
     * @param userid
     * @return
     */
    JSONObject queryeducationlistlist(Integer offset, Integer limit, Integer userid);

    /**
     * 添加学历
     * @param educationBean
     */
    void addeducationlist(EducationBean educationBean);

    /**
     * 查询修改数据
     * @param stuid
     * @return
     */
    List queryupdatelist(Integer stuid);

    /**
     * 修改学历信息
     * @param educationBean
     */
    void updateeducationlist(EducationBean educationBean);

    /**
     * 查询工作信息
     * @param offset
     * @param limit
     * @param userid
     * @return
     */
    JSONObject queryworklist(Integer offset, Integer limit, Integer userid);

    /**
     * 查询地区
     * @return
     */
    List queryaddresslist();

    /**
     * 新增工作数据
     * @param workBean
     */
    void addworklist(WorkBean workBean);

    /**
     * 查询工作修改数据
     * @param workid
     * @return
     */
    List queryupdateworklist(Integer workid);

    /**
     * 修改工作信息
     * @param workBean
     */
    void updateworklist(WorkBean workBean);

    /**
     * 查询房产信息
     * @param offset
     * @param limit
     * @param userid
     * @return
     */
    JSONObject queryroomlist(Integer offset, Integer limit, Integer userid);

    /**
     * 新增房产信息
     * @param roomBean
     */
    void addroomlist(RoomBean roomBean);

    /**
     * 查询修改数据
     * @param roomid
     * @return
     */
    List queryupdateroomlist(Integer roomid);

    /**
     * 修改房产信息
     * @param roomBean
     */
    void updateroomlist(RoomBean roomBean);

    /**
     * 查询车产
     * @param offset
     * @param limit
     * @param userid
     * @return
     */
    JSONObject querycarlist(Integer offset, Integer limit, Integer userid);

    /**
     * 添加车产
     * @param carBean
     */
    void addcarlist(CarBean carBean);

    /**
     *  查询修改汽车数据
     * @param carid
     * @return
     */
    List queryupdatecarlist(Integer carid);

    /**
     * 修改数据
     * @param carBean
     */
    void updatecarlist(CarBean carBean);

    /**
     * 判断用户是否存在
     * @param phone
     * @return
     */
    QUserBean addpanduanphone(String phone);

    /**
     * 注册用户
     * @param qUserBean
     */
    void addpuserlist(QUserBean qUserBean);
}
