package com.qf.novel.service;

import com.qf.novel.pojo.vo.NBookSearchCustom;
import com.qf.novel.pojo.vo.NSearchBookResult;

import java.util.List;

public interface SearchBookService {
    boolean importAllBooks();
    NSearchBookResult search(String keyword, Integer page, int rows);

    List<NBookSearchCustom> searchByCatParentName(int catParentName);

    List<String> searchCatNames(int catParentName);
}
