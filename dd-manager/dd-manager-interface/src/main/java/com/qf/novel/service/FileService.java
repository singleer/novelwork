package com.qf.novel.service;

import org.springframework.web.multipart.MultipartFile;

import java.util.Map;

/**
 * User: LXH
 * Date: 2017/11/24 0024
 * Time: 16:56
 */
public interface FileService {
    Map<String,Object> uploadImage(MultipartFile upfile);
}
