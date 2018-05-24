package com.jk.util;

import java.util.Date;

public class ConBean {

    /**
     * 短信平台接口地址https://api.miaodiyun.com/20150822/industrySMS/sendSMS
     */
    public static final String SMS_URL = "https://api.miaodiyun.com/20150822/industrySMS/sendSMS";

    /**
     *个人平台Id
     *
     *843717056d834400852d4e9bf76f74f9
     */
    public static final String SMS_selfID = "843717056d834400852d4e9bf76f74f9";

    /**
     *短信模板ID   生日祝福：191082431
     * 短信验证码 164611295
     * 安晓智的  164594625   王俏的 207212023
     */
    public static final String SMS_mobanId = "207212023";

    /**
     * 当前发送时间获取
     */
    public static final String SMS_Time = TimeUtil.dateTostr(new Date(),"yyyyMMddHHmmss");
    /**
     * 个人平台模板密匙
     * e37095af6acf46a98debd0e3cfc0c64e
     * 3672320800f14e79ae2ae462c221a4eb
     */
    public static final String SMS_PSD = "3672320800f14e79ae2ae462c221a4eb";

    /**
     * 验证码下一次可发送时间
     */
    public static final String SMS_TIME_OUT = "checkTime";

    public static final String SMS_CHECK_NUMBER_OUT = "checkcode";
}
