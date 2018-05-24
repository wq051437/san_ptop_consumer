package com.jk.controller;

import com.jk.model.QTree;
import com.jk.service.QTreeService;
import com.jk.util.JSONUtil;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import javax.annotation.Resource;
import java.util.List;

/**
 * Created by new鹏 on 2018/5/22.
 */
@Controller
@RequestMapping("qtreeController")
public class QTreeController {

         @Resource
         private QTreeService qTreeService;


          @ResponseBody
          @RequestMapping("treelist")
          public    String   treelist(){
              List<QTree> listMenu  =	qTreeService.threelist();
              return JSONUtil.toJson(listMenu);
          }
}
