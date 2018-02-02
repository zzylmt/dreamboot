package com.zznet.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import com.zznet.dao.DBadminDao;
import com.zznet.entity.DBadmin;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

/**
 * Created by zz on 2016/9/28 14:20.
 */
@Controller
public class DBadminController {

    @Resource(name = "dbadmindao")
    private DBadminDao dbadminDaoImpl;

    @RequestMapping("/master/login")
    public String masterlogin(HttpServletRequest request,
                           @RequestParam(value = "username") String username,
                           @RequestParam(value = "pswd") String pswd) throws Exception {
        try {
            DBadmin admininfo;
            admininfo = dbadminDaoImpl.checkDBadmin(username, pswd);

            if (admininfo.getId() != 0) {
                HttpSession session = request.getSession();
                session.setAttribute("dbadmininfo", admininfo);
                session.setMaxInactiveInterval(60 * 60 * 24);
            } else {
                return "master/login";
            }
        } catch (NullPointerException e) {
            e.printStackTrace();
            request.setAttribute("msg", "用户名或密码错误:" + username);
            return "master/login";
        } catch (Exception e) {
            e.printStackTrace();
            return "master/login";
        }

        return "master/index";
    }
}
