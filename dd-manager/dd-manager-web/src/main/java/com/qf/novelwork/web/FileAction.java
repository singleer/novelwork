package com.qf.novelwork.web;

import com.qf.novel.service.FileService;
import org.apache.commons.io.IOUtils;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.InputStream;
import java.io.PrintWriter;
import java.util.Map;

/**
 * Created by ${lxh} on 2017/11/17 0017
 *
 * 自定义文件上传
 */
@Controller
public class FileAction {


    @Autowired
    private FileService fileService;

    private Logger logger = LoggerFactory.getLogger(this.getClass());

    //图片上传初始化
    @ResponseBody
    @RequestMapping(value = "/file/upload",method = RequestMethod.GET)
    public void config(HttpServletRequest request, HttpServletResponse response) throws Exception{
        //设置请求流和响应流字符集、内容类型
        request.setCharacterEncoding("UTF-8");
        response.setCharacterEncoding("UTF-8");
        response.setContentType("application/json");

        String action = request.getParameter("action");
        if("config".equals(action)){
            InputStream is = this.getClass().getClassLoader().getResourceAsStream("config.json");
            PrintWriter out = response.getWriter();
            IOUtils.copy(is,out,"UTF-8");
        }

    }

    //图片上传
    @ResponseBody
    @RequestMapping(value = "/file/upload",method = RequestMethod.POST)
    public Map<String,Object> upload(MultipartFile upfile){

        return fileService.uploadImage(upfile);
    }
}