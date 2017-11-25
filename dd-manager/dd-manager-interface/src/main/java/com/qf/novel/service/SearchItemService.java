package com.qf.novel.service;

import com.qf.novel.pojo.vo.TbSearchItemResult;

public interface SearchItemService {
    TbSearchItemResult search(String keyword, Integer page, int i);
}
