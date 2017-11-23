package com.qf.novelwork.service.impl;

import com.qf.novel.common.dto.Page;
import com.qf.novel.common.dto.Result;
import com.qf.novel.dao.NOrderCustomMapper;
import com.qf.novel.dao.NOrderMapper;
import com.qf.novel.pojo.po.NOrder;
import com.qf.novel.pojo.po.NOrderExample;
import com.qf.novel.pojo.vo.NOrderCustom;
import com.qf.novel.pojo.vo.NOrderQuery;
import com.qf.novel.service.OrderService;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.Date;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

/**
 * Created by ${lxh} on 2017/11/18 0018
 */
@Service
public class OrderServiceImpl implements OrderService {

    private Logger logger = LoggerFactory.getLogger(this.getClass());
    @Autowired
    private NOrderCustomMapper orderCustomDao;
    @Autowired
    private NOrderMapper nOrderMapper;

    @Override
    public Result<NOrderCustom> listOrdersByPage(Page page, NOrder nOrder, NOrderQuery nOrderQuery) {
        Result<NOrderCustom> result = null;
        try{
            Map<String,Object> map = new HashMap<String,Object>();
            map.put("page",page);
            map.put("nOrder", nOrder);
            map.put("nOrderQuery", nOrderQuery);
            result = new Result<NOrderCustom>();
            result.setTotal(orderCustomDao.countOrders(map));
            result.setRows(orderCustomDao.listOrdersByPage(map));

        }catch (Exception e){
            logger.error(e.getMessage(),e);
            e.printStackTrace();
        }
        return result;
    }

    @Override
    public int updateorders(List<Long> ids) {
        int i=0;
        try {
            NOrder record=new NOrder();
            record.setStatus(3);
            //创建更新模版
            NOrderExample example=new NOrderExample();
            NOrderExample.Criteria criteria=example.createCriteria();
            criteria.andIdIn(ids);
            //
            System.out.println(record);
            System.out.println(example);
            i=nOrderMapper.updateByExampleSelective(record,example);
        }catch (Exception e){
            logger.error(e.getMessage(),e);
            e.printStackTrace();
        }
        return i;
    }

    @Override
    public int saveorders(NOrder nOrder) {
        Date date=new Date();
        NOrder record=new NOrder();
        record.setStatus(nOrder.getStatus());
        record.setContent(nOrder.getContent());
        record.setPrice(nOrder.getPrice());
        record.setRid(nOrder.getRid());
        record.setCreated(date);
        int i=nOrderMapper.insert(record);
        return i;
    }
}
