package com.jk.controller;

import com.jk.model.Tree;
import com.jk.model.UserBean;
import com.jk.service.TreeService;

import com.jk.util.JSONUtil;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import javax.annotation.Resource;
import javax.servlet.http.HttpSession;
import java.util.List;

/**
 * Created by new鹏 on 2018/5/15.
 */
@Controller
@RequestMapping("treeController")
public class TreeController {

    @Resource
    private TreeService treeService;

    @ResponseBody
    @RequestMapping("/treelist")
    public String treelist(HttpSession session, Integer a){
        UserBean userBean = (UserBean) session.getAttribute("rr");
        List<Tree>   listMenu  =	treeService.threelist(userBean.getUserid(),a);
        return JSONUtil.toJson(listMenu);
    }
}
