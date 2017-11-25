package com.qf.novelwork.web;

import com.qf.novel.common.dto.Order;
import com.qf.novel.common.dto.Page;
import com.qf.novel.common.dto.Result;
import com.qf.novel.pojo.po.NAuthor;
import com.qf.novel.pojo.po.NReader;


import com.qf.novel.service.ReaderService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.Scope;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

/**
 * User: Administrator
 * Date: 2017/11/18
 * Time: 10:36
 * Version:V1.0
 */
@Controller
@Scope("prototype")
public class ReaderAction {


    @Autowired
    private ReaderService readerService;

//分页查询全部，排序，模糊查询
    @ResponseBody
    @RequestMapping("/readers")
    public Result<NReader> listItemsByPage(Page page, Order order, NReader query){
        //System.out.println(query.getState());
        Result<NReader> list = null;
       // List<NAuthorCustom> list1 = new ArrayList<>();
        try {
            list = readerService.listReadersByPage(page,order,query);

        }catch (Exception e) {
            e.printStackTrace();
        }
        return list;

    }

    @ResponseBody
    @RequestMapping("/reader/1")
    public int updateBatch1(@RequestParam("ids[]") List<Long> ids) {
        int i = 0;
        i = readerService.updateBatch1(ids);
        System.out.println("i="+i);
        return i;
    }
    @ResponseBody
    @RequestMapping("/reader/2")
    public int updateBatch2(@RequestParam("ids[]") List<Long> ids) {
        int i = 0;
        i = readerService.updateBatch2(ids);
        System.out.println("i="+i);
        return i;
    }
    @ResponseBody
    @RequestMapping("/reader/3")
    public int updateBatch3(@RequestParam("ids[]") List<Long> ids) {
        int i = 0;
        i = readerService.updateBatch3(ids);
        System.out.println("i="+i);
        return i;
    }


//删除
  /*  @ResponseBody
    @RequestMapping("/authors/batch")
    public int updateBatch(@RequestParam("ids[]") List<Long> ids){
        //System.out.println(ids);
        int i=0;
        try {
            i=aothorService.updateBatch(ids);
        }catch (Exception e){
            e.printStackTrace();
        }
        return i;
    }
    //活跃
    @ResponseBody
    @RequestMapping("/authors/batchup")
    public int updateBatchUp(@RequestParam("ids[]") List<Long> ids){
        //System.out.println(ids);
        int i=0;
        try {
            i=aothorService.updateBatchUp(ids);
        }catch (Exception e){
            e.printStackTrace();
        }
        return i;
    }
    //休眠
    @ResponseBody
    @RequestMapping("/authors/batchdown")
    public int updateBatchDown(@RequestParam("ids[]") List<Long> ids){
        //System.out.println(ids);
        int i=0;
        try {
            i=aothorService.updateBatchDown(ids);
        }catch (Exception e){
            e.printStackTrace();
        }
        return i;
    }

    //新增
    @ResponseBody
    @RequestMapping("/author")
    public int saveItem(NAuthor author){
        int i=0;
        try {
            i=aothorService.saveItem(author);
        }catch (Exception e){
            e.printStackTrace();
        }
        return i;
    }*/
}
