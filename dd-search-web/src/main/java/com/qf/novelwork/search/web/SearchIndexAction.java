package com.qf.novelwork.search.web;


import com.qf.novel.pojo.vo.TbSearchItemResult;
import com.qf.novel.service.SearchItemService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

/**
 * User: DHC
 * Date: 2017/11/22
 * Time: 15:40
 * Version:V1.0
 */
@Controller
public class SearchIndexAction {

    @Autowired
    private SearchItemService searchItemService;

    @RequestMapping("/")
    public String portalIndex(String keyword,
                              @RequestParam(defaultValue = "1") Integer page, Model model) throws Exception {
        System.out.println("----------------------------------=");


        if (keyword != null) {
            keyword = new String(keyword.getBytes("iso-8859-1"), "utf-8");
            //查询商品列表
            TbSearchItemResult searchResult = searchItemService.search(keyword, page, 60);
            //把结果传递给页面
            model.addAttribute("query", keyword);
            model.addAttribute("totalPages", searchResult.getTotalPages());
            model.addAttribute("page", page);
            model.addAttribute("recourdCount", searchResult.getRecordCount());
            model.addAttribute("itemList", searchResult.getItemList());

        }

        return "index";
    }
}
