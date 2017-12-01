package com.qf.novelwork.search.web;


import com.qf.novel.pojo.vo.NBookSearchCustom;
import com.qf.novel.pojo.vo.NSearchBookResult;
import com.qf.novel.service.SearchBookService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import javax.servlet.http.HttpSession;
import java.util.List;

/**
 * User: DHC
 * Date: 2017/11/22
 * Time: 15:40
 * Version:V1.0
 */
@Controller
public class SearchIndexAction {

    @Autowired
    private SearchBookService searchBookService;

    @RequestMapping("/")
    public String portalIndex(HttpSession session, String keyword,
                              @RequestParam(defaultValue = "1") Integer page, Model model) throws Exception {
        System.out.println("----------------------------------=");
        if (keyword == null){
            keyword="*:*";
        }
        if (keyword != null) {
            //keyword = new String(keyword.getBytes("iso-8859-1"), "utf-8");
            //查询商品列表
            System.out.println(keyword);
            System.out.println(page);
            NSearchBookResult searchResult = searchBookService.search(keyword, page, 2);
            //把结果传递给页面
            model.addAttribute("query", keyword);
            model.addAttribute("totalPages", searchResult.getTotalPages());
            model.addAttribute("page", page);
            model.addAttribute("recourdCount", searchResult.getRecordCount());
            model.addAttribute("bookList", searchResult.getBookList());

        }

        return "index";
    }

    @RequestMapping("/fenlei")
    public String feilei(int catParentName,Model model){
        List<String> catNames = searchBookService.searchCatNames(catParentName);
        System.out.println(catNames.toString());
        List<NBookSearchCustom> list = searchBookService.searchByCatParentName(catParentName);
        model.addAttribute("bookList",list);

        model.addAttribute("catNames",catNames);

        return "fenlei";

    }

}
