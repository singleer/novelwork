package com.qf.novel.dao;

import com.qf.novel.pojo.po.NReader;


import java.util.List;
import java.util.Map;

/**
 * User: Administrator
 * Date: 2017/11/18
 * Time: 11:07
 * Version:V1.0
 */
public interface NReaderCustomMapper {
    int countReaders(Map<String, Object> map);
    List<NReader> listReadersByPage(Map<String, Object> map);
}
