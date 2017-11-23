package com.qf.novelwork.web;

import com.qf.novel.common.dto.Page;
import com.qf.novel.common.dto.Result;
import com.qf.novel.pojo.po.NOrder;
import com.qf.novel.pojo.vo.NOrderCustom;
import com.qf.novel.pojo.vo.NOrderQuery;
import com.qf.novel.service.OrderService;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.Scope;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import java.util.List;

/**
 * Created by ${lxh} on 2017/11/18 0018
 */
@Controller
@Scope("prototype")
public class OrderAction {

    private Logger logger = LoggerFactory.getLogger(this.getClass());

    @Autowired
    private OrderService orderService;
    @ResponseBody
    @RequestMapping("/orders/list")
    public Result<NOrderCustom> listOrders(Page page, NOrder nOrder, NOrderQuery nOrderQuery){

        Result<NOrderCustom> list = null;
        try{
            list = orderService.listOrdersByPage(page,nOrder,nOrderQuery);
        }catch (Exception e){
            logger.error(e.getMessage(),e);
            e.printStackTrace();
        }
        return list;

    }

    @ResponseBody
    @RequestMapping("/orders/delete")
    public int updateBatch(@RequestParam("ids[]")List<Long> ids){
        System.out.println(ids);
        int i=0;
        try {
            i=orderService.updateorders(ids);
        }catch (Exception e){
            logger.error(e.getMessage(),e);
            e.printStackTrace();
        }
        return i;
    }

    @ResponseBody
    @RequestMapping(value="/addas",method = RequestMethod.POST)
    public int saveorders(NOrder nOrder){
        System.out.println(nOrder);
        int i=0;
        try {
            i=orderService.saveorders(nOrder);
        }catch (Exception e){
            logger.error(e.getMessage(),e);
            e.printStackTrace();
        }
        return i;
    }
}
