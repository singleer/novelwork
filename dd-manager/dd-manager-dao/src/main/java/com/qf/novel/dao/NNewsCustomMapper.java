package com.qf.novel.dao;

import com.qf.novel.pojo.po.NNews;

import java.util.List;
import java.util.Map;

/**
 * User: Administrator
 * Date: 2017/11/18
 * Time: 11:07
 * Version:V1.0
 */
public interface NNewsCustomMapper {
    int countNews(Map<String, Object> map);
    List<NNews> listNewsByPage(Map<String, Object> map);
}
