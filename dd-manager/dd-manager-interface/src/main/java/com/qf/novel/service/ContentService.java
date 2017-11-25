package com.qf.novel.service;

import com.qf.novel.pojo.po.NContent;

import java.util.List;

/**
 * User: LXH
 * Date: 2017/11/24 0024
 * Time: 17:53
 */
public interface ContentService {


    List<NContent> listContentsByCid(Long id);
}
