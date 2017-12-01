package com.qf.novel.dao;


import com.qf.novel.pojo.vo.NBookSearchCustom;

import java.util.List;

public interface NBookSearchCustomMapper {
    List<NBookSearchCustom> listSearchBooks();

    NBookSearchCustom getById(long itemId);

    List<String> getCatNameByParent(Integer catParentName);
}
