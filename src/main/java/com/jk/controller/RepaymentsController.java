package com.jk.controller;

import com.alibaba.fastjson.JSONObject;
import com.jk.service.RepaymentsService;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import javax.annotation.Resource;

/**
 * Created by new鹏 on 2018/5/17.
 */
@Controller
@RequestMapping("repaymentsController")
public class RepaymentsController {

      @Resource
      private RepaymentsService repaymentsService;

      @ResponseBody
      @RequestMapping("repaymentslist")
      public JSONObject repaymentslist(Integer offset, Integer limit){
          JSONObject json=  repaymentsService.queryrepaymentslist(offset,limit);
          return json;
      }

}
