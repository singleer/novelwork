package com.qf.novelwork.web;

import com.qf.novel.pojo.po.NAdmin;
import com.qf.novel.service.NAdminService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.Scope;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import javax.servlet.http.HttpServletRequest;

/**
 * Created by ${lxh} on 2017/11/13 0013
 */
@Controller
@Scope("prototype")
public class IndexAction {
    @Autowired
    NAdminService nAdminService;
    @RequestMapping("/")
    public String  index(){
        return "index";
    }

    @ResponseBody
    @RequestMapping("/checkcode")
    public String ajaxCheckCode(String code , HttpServletRequest request){
        //获取验证码
        String code1 = (String)request.getSession().getAttribute("checkcode_session");
        String code_ = code;
        //System.out.println(code1+"````"+code_);

        if(!code1.equals(code_)){
            return "0";
        }else{
            return "1";
        }


    }

    @RequestMapping("/{page}")
    public String page(@PathVariable("page") String page){
        return page;
    }

    @RequestMapping("/checkname")
    @ResponseBody
    public String doLogin(NAdmin nAdmin) throws Exception{
        String  mess = "";
        NAdmin findUser = nAdminService.selectByadminname(nAdmin);
        if(findUser!=null){
            if(findUser.getPassword().equals(nAdmin.getPassword())){
                        /*session.setAttribute("sessionUser", findUser);*/
                mess="2";
            }else{
                mess="3";
            }
        }else{
            mess="3";
        }
        return mess;
    }


}
