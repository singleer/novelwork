package com.qf.novelwork.service.impl;

import com.qf.novel.common.util.FtpUtils;
import com.qf.novel.common.util.IDUtils;
import com.qf.novel.common.util.PropKit;
import com.qf.novel.service.FileService;
import org.joda.time.DateTime;
import org.springframework.stereotype.Service;
import org.springframework.web.multipart.MultipartFile;

import java.io.IOException;
import java.io.InputStream;
import java.util.HashMap;
import java.util.Map;

/**
 * User: LXH
 * Date: 2017/11/24 0024
 * Time: 16:57
 */
@Service
public class FileServiceImpl implements FileService {

    @Override
    public Map<String, Object> uploadImage(MultipartFile upfile) {

        Map<String, Object> map = new HashMap<String, Object>();
        //读取FTP配置文件信息
        String name = "ftp.properties";
        String host = PropKit.use(name).get("ftp.address");
        int port = PropKit.use(name).getInt("ftp.port");
        String username = PropKit.use(name).get("ftp.username");
        String password = PropKit.use(name).get("ftp.password");
        String basePath = PropKit.use(name).get("ftp.basePath");
        //创建文件路径：基础路径+文件路径+文件名+扩展名
        String filePath = new DateTime().toString("/yyyy/MM/dd");
        //获取原有的文件名，包含扩展名
        String originalFilename = upfile.getOriginalFilename();
        String fileType = originalFilename.substring(originalFilename.lastIndexOf("."));
        String newName = IDUtils.genImageName() + fileType;
        InputStream inputStream = null;
        try {
            inputStream = upfile.getInputStream();
        } catch (IOException e) {
            e.printStackTrace();
        }
        //执行上传操作，返回布尔值
        boolean bool = FtpUtils.uploadFile(host, port, username, password, basePath, filePath, newName, inputStream);
        System.out.println("+++++++++++++++++++++++++++++++++++++++" + bool);
        if (bool) {
            map.put("state", "SUCCESS");
            map.put("title", newName);
            map.put("original", originalFilename);
            map.put("type", fileType);
            map.put("url", filePath + "/" + newName);
            map.put("size", upfile.getSize());
        }
        return map;
    }
}
