package com.jk.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import javax.servlet.http.HttpSession;

/**
 * Created by new鹏 on 2018/5/16.
 */
@Controller
@RequestMapping("/tiao")
public class TiaoZhuanController {

         @RequestMapping("huiyuan")
         public  String   huiyuan(Integer  a,HttpSession session){
             session.setAttribute("a",a);
             return "left";
         }
}
