package com.qf.novelwork.web;

import com.qf.novel.common.dto.Page;
import com.qf.novel.common.dto.Result;
import com.qf.novel.pojo.po.NBook;
import com.qf.novel.pojo.po.NBookCat;
import com.qf.novel.pojo.po.NBookDesc;
import com.qf.novel.pojo.vo.BookQuery;
import com.qf.novel.pojo.vo.NBookCustom;
import com.qf.novel.service.BookService;
import com.qf.novel.service.IBookCatService;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.Scope;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import java.util.List;

/**
 * Created by ${lxh} on 2017/11/18 0018
 */
@Controller
@Scope("prototype")
public class BookAction {

    private Logger logger = LoggerFactory.getLogger(this.getClass());

    @Autowired
    private BookService bookService;
    @Autowired
    private IBookCatService bookCatService;

    @ResponseBody
    @RequestMapping("books")
    public Result<NBookCustom> listBooks(Page page, BookQuery query){

        Result<NBookCustom> result = null;
        try{
            result = bookService.listBooksByPage(page,query);

        }catch (Exception e){
            logger.error(e.getMessage(),e);
            e.printStackTrace();
        }
        return result;

    }

    @ResponseBody
    @RequestMapping("/books/remove")
    public int deleteBooksBatch(@RequestParam("ids[]") List<Long> ids){
        int i=0;
        try{
            i =bookService.removeBooks(ids);

        }catch (Exception e){
            logger.error(e.getMessage(),e);
            e.printStackTrace();
        }
        return i;
    }


    //添加小说
    @ResponseBody
    @RequestMapping("bookAdd")
    public int saveBook(NBook nBook, String content){

        int i = 0;
        try{
            i = bookService.saveItem(nBook,content);
        }catch (Exception e){
            logger.error(e.getMessage(),e);
            e.printStackTrace();
        }
        return i;

    }

    //修改小说
    @ResponseBody
    @RequestMapping("bookEdit")
    public int modifyBook(NBook nBook, String content){

        int i = 0;
        try{
            i = bookService.editBook(nBook,content);
        }catch (Exception e){
            logger.error(e.getMessage(),e);
            e.printStackTrace();
        }
        return i;

    }

    //编辑小说
    @RequestMapping("/book-edit")
    public String modifyPage(@RequestParam("bid") Long bid, Model model){
        NBook book = null;
        NBookCat bookCat = null;
        NBookDesc bookDesc = null;

        try{
            book = bookService.findBookById(bid);
            bookCat = bookCatService.findCatById(book.getCid());
            bookDesc = bookService.findDescById(bid);


            model.addAttribute("novel", book);
            model.addAttribute("bookCat", bookCat);
            model.addAttribute("bookDesc", bookDesc);
        }catch (Exception e){
            logger.error(e.getMessage(),e);
            e.printStackTrace();
        }

        return "book-edit";
    }



}
