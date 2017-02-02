package com.zznet.controller;

import com.zznet.dao.DeliAddrDao;
import com.zznet.entity.DBuser;
import com.zznet.entity.DeliAddr;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;
import java.util.List;

/**
 * Created by zz on 2017/2/2.
 */
@Controller
public class DeliAddrController {
    @Resource(name = "deliaddrdao")
    private DeliAddrDao deliaddrDaoImpl;

    @RequestMapping("/iuser/deliaddrlist")
    public String syslogin(HttpServletRequest request, HttpSession session) throws Exception {
        List<DeliAddr> deliaddrlist;

        try {
            DBuser dbuser = (DBuser) session.getAttribute("dbuser");

            deliaddrlist = deliaddrDaoImpl.getDeliAddrList(dbuser.getId());

            request.setAttribute("deliaddrlist",deliaddrlist);
        } catch (Exception e) {
            e.printStackTrace();
        }
        return "iuser/deliaddrlist";
    }
}
