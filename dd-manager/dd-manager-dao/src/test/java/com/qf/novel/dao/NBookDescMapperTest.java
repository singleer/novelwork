package com.qf.novel.dao;

import com.qf.novel.pojo.po.NBookDesc;
import com.qf.novel.pojo.po.NBookDescExample;
import org.junit.Test;
import org.springframework.beans.factory.annotation.Autowired;

import java.util.Date;

import static org.junit.Assert.*;

/**
 * User: LXH
 * Date: 2017/11/24 0024
 * Time: 16:02
 */
public class NBookDescMapperTest {


    @Autowired
    private NBookDescMapper bookDescDao;
    @Test
    public void updateByExampleSelective() throws Exception {
       /* String content = "中国龙";
        NBookDescExample example2 = new NBookDescExample();
        NBookDescExample.Criteria criteria = example2.createCriteria();
        criteria.andBookIdEqualTo(151149259762513L);
        NBookDesc bookDesc = bookDescDao.selectByPrimaryKey(151149259762513L);
        System.out.println(bookDesc.getBookDesc());
        bookDesc.setBookDesc(content);
        bookDesc.setUpdated(new Date());
        //i += bookDescDao.updateByExample(bookDesc,example2);
        int i = bookDescDao.updateByExampleSelective(bookDesc, example2);
        System.out.println(i);*/

    }

}