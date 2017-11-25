package com.qf.novelwork.service.impl;

import com.qf.novel.common.dto.Order;
import com.qf.novel.common.dto.Page;
import com.qf.novel.common.dto.Result;
import com.qf.novel.dao.NReaderCustomMapper;
import com.qf.novel.dao.NReaderMapper;
import com.qf.novel.pojo.po.NReader;
import com.qf.novel.pojo.po.NReaderExample;
import com.qf.novel.service.ReaderService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

@Service
public class ReaderServiceImpl implements ReaderService {

    @Autowired
    private NReaderCustomMapper nReaderCustomDao;
    @Autowired
    private NReaderMapper nReaderDao;

    @Override
    public Result<NReader> listReadersByPage(Page page, Order order, NReader query) {

        Result<NReader> result = null;
        try {
            Map<String, Object> map = new HashMap<String, Object>();
            map.put("page", page);
            map.put("order",order);
            map.put("query",query);
            result = new Result<NReader>();

            int total = nReaderCustomDao.countReaders(map);
            result.setTotal(total);

            List<NReader> list = nReaderCustomDao.listReadersByPage(map);
            result.setRows(list);
        } catch (Exception e) {
            e.printStackTrace();
        }
        return result;
    }

    @Override
    public int updateBatch3(List<Long> ids) {
        int i = 0;
        NReader record = new NReader();
        record.setState(3);
        NReaderExample example = new NReaderExample();
        NReaderExample.Criteria criteria = example.createCriteria();
        criteria.andIdIn(ids);

        i = nReaderDao.updateByExampleSelective(record, example);

        return i;
    }

    @Override
    public int updateBatch2(List<Long> ids) {
        int i = 0;
        NReader record = new NReader();
        record.setState(2);
        NReaderExample example = new NReaderExample();
        NReaderExample.Criteria criteria = example.createCriteria();
        criteria.andIdIn(ids);

        i = nReaderDao.updateByExampleSelective(record, example);

        return i;
    }

    @Override
    public int updateBatch1(List<Long> ids) {
        int i = 0;
        NReader record = new NReader();
        record.setState(1);
        NReaderExample example = new NReaderExample();
        NReaderExample.Criteria criteria = example.createCriteria();
        criteria.andIdIn(ids);

        i = nReaderDao.updateByExampleSelective(record, example);

        return i;
    }
}
