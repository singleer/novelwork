package com.qf.novelwork.web;

import com.qf.novel.common.dto.Order;
import com.qf.novel.common.dto.Page;
import com.qf.novel.common.dto.Result;
import com.qf.novel.pojo.po.NNews;

import com.qf.novel.service.NewsService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.Scope;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

/**
 * User: Administrator
 * Date: 2017/11/18
 * Time: 10:36
 * Version:V1.0
 */
@Controller
@Scope("prototype")
public class NewsAction {


    @Autowired
    private NewsService newsService;

//分页查询全部，排序，模糊查询
    @ResponseBody
    @RequestMapping("/newss")
    public Result<NNews> listItemsByPage(Page page, Order order, NNews query){
        //System.out.println(query.getState());
        Result<NNews> list = null;
       // List<NAuthorCustom> list1 = new ArrayList<>();
        try {
            list = newsService.listNewsByPage(page,order,query);
           /* list = aothorService.listItemsByPage(page,order,query);

            List<NAuthorCustom> rows = list.getRows();
            List<Object> arr = new ArrayList<>();
            Iterator<NAuthorCustom> iterator = rows.iterator();
            while (iterator.hasNext()){
                NAuthorCustom next = iterator.next();
                list1.add(next);
            }
            int num = 0;
            int size=rows.size();
            for(int i=0;i<rows.size();i++){
                //num=num-1;
                for(int j=i+1+num;j<size;j++){
                    NAuthorCustom a1 = rows.get(i);
                    NAuthorCustom a2 = list1.get(j);
                    if (a1.getId()==a2.getId()){
                        a1.setBookname(a1.getBookname()+","+a2.getBookname());

                        rows.remove(j-num);

                        num++;
                    }
                }

            }
            list.setRows(rows);*/
        }catch (Exception e) {
            e.printStackTrace();
        }
        return list;

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
