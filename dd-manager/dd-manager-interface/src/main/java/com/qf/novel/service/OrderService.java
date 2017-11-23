package com.qf.novel.service;

import com.qf.novel.common.dto.Page;
import com.qf.novel.common.dto.Result;
import com.qf.novel.pojo.po.NOrder;
import com.qf.novel.pojo.vo.NOrderCustom;
import com.qf.novel.pojo.vo.NOrderQuery;

import java.util.List;

/**
 * Created by ${lxh} on 2017/11/18 0018
 */
public interface OrderService {
    Result<NOrderCustom> listOrdersByPage(Page page, NOrder nOrder, NOrderQuery nOrderQuery);


    int updateorders(List<Long> ids);

    int saveorders(NOrder nOrder);
}
