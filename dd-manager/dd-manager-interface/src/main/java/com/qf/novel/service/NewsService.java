package com.qf.novel.service;

import com.qf.novel.common.dto.Order;
import com.qf.novel.common.dto.Page;
import com.qf.novel.common.dto.Result;
import com.qf.novel.pojo.po.NNews;

public interface NewsService {
    Result<NNews> listNewsByPage(Page page, Order order, NNews query);
}
