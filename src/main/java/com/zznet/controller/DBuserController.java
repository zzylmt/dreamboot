package com.zznet.controller;

import com.zznet.dao.DBuserDao;
import com.zznet.entity.DBuser;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

/**
 * Created by zz on 2017/2/2.
 */
@Controller
public class DBuserController {
    @Resource(name = "dbuserdao")
    private DBuserDao dbuserDaoImpl;

    @RequestMapping("/iuser/login")
    public String syslogin(HttpServletRequest request,
                           @RequestParam(value = "username") String username,
                           @RequestParam(value = "pswd") String pswd) throws Exception {
        try {
            DBuser dbuser;
            dbuser = dbuserDaoImpl.checkDBuser(username, pswd);

            if (dbuser.getId() != 0) {
                HttpSession session = request.getSession();
                session.setAttribute("dbuser", dbuser);
                session.setMaxInactiveInterval(60 * 60 * 24);
            } else {
                return "iuser/login";
            }

        } catch (NullPointerException e) {
            e.printStackTrace();
            request.setAttribute("msg", "用户名或密码错误:" + username);
            return "iuser/login";
        } catch (Exception e) {
            e.printStackTrace();
            return "iuser/login";
        }

        return "iuser/index";
    }
}
