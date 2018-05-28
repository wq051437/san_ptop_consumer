package com.jk.controller;

import com.alibaba.fastjson.JSONObject;
import com.jk.service.LogService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import java.util.List;

/**
 * Created by 周玉路 on 2018/5/27.
 */


@Controller
@RequestMapping("logController")
public class LogController {

    @Autowired
    private LogService logService;
    @ResponseBody
    @RequestMapping("/addloggerlist")
    public    JSONObject    addloggerlist(Integer offset, Integer limit){
        JSONObject json  =logService.addloggerlist(offset,limit);
        return json;
    }

}
