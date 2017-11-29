package com.qf.novelwork.portal.web;


import com.qf.novel.common.util.PropKit;
import com.qf.novel.pojo.po.NContent;
import com.qf.novel.service.ContentService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServletRequest;
import java.util.List;

/**
 * User: DHC
 * Date: 2017/11/20
 * Time: 15:18
 * Version:V1.0
 */
@Controller
public class PortalIndexAction {

    @Autowired
    private ContentService contentService;


    @RequestMapping("/")
    public String portalIndex(Model model, HttpServletRequest request){
        //第一步：使用service去查，根据tb_content_category的ID去查
        Long id = PropKit.use("ftp.properties").getLong("ftp.gallery");
        List<NContent> list = contentService.listContentsByCid(id);
        //第二步：存放到model中
        model.addAttribute("ad1List", list);

        /*String tokenId = "";

        Cookie[] cookies = request.getCookies();
        for(Cookie c:cookies){
            if("tt_token".equals(c.getName())){
                tokenId = c.getValue();
            }
        }*/


        //第三步：返回首页
        return "portalIndex";
    }

    @RequestMapping("/readerIndex")
    public String index(@RequestParam("username") String username, Model model){

        model.addAttribute("username", username);

        return "portalIndex";
    }

}
