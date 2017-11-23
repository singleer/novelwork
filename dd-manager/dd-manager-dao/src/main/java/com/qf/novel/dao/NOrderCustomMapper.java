package com.qf.novel.dao;

import com.qf.novel.pojo.vo.NOrderCustom;

import java.util.List;
import java.util.Map;

/**
 * Created by ${lxh} on 2017/11/18 0018
 */
public interface NOrderCustomMapper {

    int countOrders(Map<String, Object> map);

    List<NOrderCustom> listOrdersByPage(Map<String, Object> map);

}
