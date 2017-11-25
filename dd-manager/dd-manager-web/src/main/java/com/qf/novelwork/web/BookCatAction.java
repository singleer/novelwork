package com.qf.novelwork.web;

import com.qf.novel.common.dto.Order;
import com.qf.novel.common.dto.Page;
import com.qf.novel.common.dto.Result;
import com.qf.novel.common.dto.TreeNode;
import com.qf.novel.pojo.po.NAuthor;
import com.qf.novel.pojo.po.NBookCat;
import com.qf.novel.pojo.vo.NBookCatQuery;
import com.qf.novel.service.IBookCatService;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.Scope;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import java.util.List;

/**
 * User: LXH
 * Date: 2017/11/21 0021
 * Time: 17:49
 */
@Controller
@Scope("prototype")
public class BookCatAction {

    private Logger logger = LoggerFactory.getLogger(this.getClass());
    @Autowired
    private IBookCatService bookCatService;

    //获取小说类别
    @ResponseBody
    @RequestMapping("/bookCats")
    public List<TreeNode> listBookCatsByPid(@RequestParam("parentId") Long parentId){
        List<TreeNode> treeNodeList = null;
        try{
            treeNodeList = bookCatService.listItemCatsByPid(parentId);

        }catch (Exception e){
            logger.error(e.getMessage(), e);
            e.printStackTrace();
        }
        return treeNodeList;
    }

    //获取作者下拉框
    @ResponseBody
    @RequestMapping("authorList")
    public List<NAuthor> getAuthor(){

        List<NAuthor> list = null;
        try{
            list = bookCatService.getAuthor();

        }catch (Exception e){
            logger.error(e.getMessage(), e);
            e.printStackTrace();
        }
        return list;
    }
    @RequestMapping("/bookcat-edit")
    public String editBookCat(@RequestParam("bid") Long id, Model model) {
        //System.out.println(id);
        List<NBookCat> list = null;
        try {
            list = bookCatService.listBookCat(id);
        }catch (Exception e) {
            e.printStackTrace();
        }
        String bname=list.get(0).getName();
        model.addAttribute("bname",bname);
        return "bookcat-edit";
    }


    @ResponseBody
    @RequestMapping("/bookcats")
    public Result<NBookCat> listItemsByPage(Page page, Order order, NBookCatQuery query){
        //System.out.println(query.getState());
        Result<NBookCat> list = null;
        try {
            list = bookCatService.listItemsByPage(page,order,query);
        }catch (Exception e) {
            e.printStackTrace();
        }
        return list;

    }

    //删除
    @ResponseBody
    @RequestMapping("/bookcats/batch")
    public int updateBatch(@RequestParam("ids[]") List<Long> ids){
        //System.out.println(ids);
        int i=0;
        try {
            i=bookCatService.updateBatch(ids);
        }catch (Exception e){
            e.printStackTrace();
        }
        return i;
    }
    //上架
    @ResponseBody
    @RequestMapping("/bookcats/batchup")
    public int updateBatchUp(@RequestParam("ids[]") List<Long> ids){
        //System.out.println(ids);
        int i=0;
        try {
            i=bookCatService.updateBatchUp(ids);
        }catch (Exception e){
            e.printStackTrace();
        }
        return i;
    }
    //下架
    @ResponseBody
    @RequestMapping("/bookcats/batchdown")
    public int updateBatchDown(@RequestParam("ids[]") List<Long> ids){
        //System.out.println(ids);
        int i=0;
        try {
            i=bookCatService.updateBatchDown(ids);
        }catch (Exception e){
            e.printStackTrace();
        }
        return i;
    }
    @ResponseBody
    @RequestMapping("/bookcats1")
    public List<TreeNode> listItemCatsByPid(@RequestParam("parentId") Long parentId){
        List<TreeNode> treeNodeList=null;
        try {
            treeNodeList=bookCatService.listItemCatsByPid1(parentId);
        }catch (Exception e){
            e.printStackTrace();
        }

        return treeNodeList;

    }
    @ResponseBody
    @RequestMapping("/bookcatAdd/{cid}")
    public int saveItemParam(@PathVariable("cid") Long cid, String paramData) {
        int i = 0;
        try {
            i=bookCatService.saveItemParam(cid,paramData);
        } catch (Exception e) {
            e.printStackTrace();
        }
        return i;
    }
    @ResponseBody
    @RequestMapping("/bookcatAdd1/")
    public int saveItemParam1(String paramData) {
        int i = 0;
        try {
            i=bookCatService.saveItemParam1(paramData);
        } catch (Exception e) {
            e.printStackTrace();
        }
        return i;
    }
    @ResponseBody
    @RequestMapping("/bookcateditname/")
    public int editbookcat1(@RequestParam("ids[]") List<String> ids) {
        int i = 0;
        try {
            i=bookCatService.editbookcat1(ids);
            System.out.println(i);
        } catch (Exception e) {
            e.printStackTrace();
        }
        return i;
    }

}
