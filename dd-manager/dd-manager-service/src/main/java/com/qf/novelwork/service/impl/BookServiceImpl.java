package com.qf.novelwork.service.impl;

import com.qf.novel.common.dto.Page;
import com.qf.novel.common.dto.Result;
import com.qf.novel.common.util.IDUtils;
import com.qf.novel.dao.NBookCustomMapper;
import com.qf.novel.dao.NBookDescMapper;
import com.qf.novel.dao.NBookMapper;
import com.qf.novel.pojo.po.NBook;
import com.qf.novel.pojo.po.NBookDesc;
import com.qf.novel.pojo.po.NBookDescExample;
import com.qf.novel.pojo.po.NBookExample;
import com.qf.novel.pojo.vo.BookQuery;
import com.qf.novel.pojo.vo.NBookCustom;
import com.qf.novel.service.BookService;
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
public class BookServiceImpl implements BookService {

    private Logger logger = LoggerFactory.getLogger(this.getClass());
    @Autowired
    private NBookCustomMapper bookCustomDao;
    @Autowired
    private NBookMapper bookDao;
    @Autowired
    private NBookDescMapper bookDescDao;

    @Override
    public int saveItem(NBook nBook, String content) {

        int i = 0;
        try{
           Long itemId = IDUtils.getItemId();
            nBook.setId(itemId);
            nBook.setStatus(1);
            nBook.setAttribute(1);
            nBook.setCreated(new Date());
            nBook.setUpdated(new Date());
            i = bookDao.insert(nBook);

            NBookDesc desc = new NBookDesc();
            desc.setBookId(itemId);
            desc.setBookDesc(content);
            desc.setCreated(new Date());
            desc.setUpdated(new Date());
            i += bookDescDao.insert(desc);

        }catch (Exception e){
            logger.error(e.getMessage(),e);
            e.printStackTrace();
        }
        return i;
    }

    @Override
    public int editBook(NBook nBook, String content) {
        int i = 0;
        try{

            NBookExample example = new NBookExample();
            NBookExample.Criteria criteria = example.createCriteria();
            criteria.andIdEqualTo(nBook.getId());
            NBook nBook1 = bookDao.selectByPrimaryKey(nBook.getId());

            nBook1.setCid(nBook.getCid());
            nBook1.setTitle(nBook.getTitle());
            nBook1.setAid(nBook.getAid());
            nBook1.setReadpoint(nBook.getReadpoint());
            nBook1.setUpdated(new Date());
            i = bookDao.updateByExampleSelective(nBook1,example);


            NBookDescExample example2 = new NBookDescExample();
            NBookDescExample.Criteria criteria2 = example2.createCriteria();
            criteria2.andBookIdEqualTo(nBook1.getId());
            NBookDesc bookDesc = bookDescDao.selectByPrimaryKey(nBook.getId());
            bookDesc.setBookDesc(content);
            bookDesc.setUpdated(new Date());
            i += bookDescDao.updateByExampleSelective(bookDesc, example2);

        }catch (Exception e){
            logger.error(e.getMessage(),e);
            e.printStackTrace();
        }
        return i;
    }

    @Override
    public int removeBooks(List<Long> ids) {
        int i=0;
        try{
            NBook record = new NBook();
            record.setStatus(3);
            NBookExample example = new NBookExample();
            NBookExample.Criteria criteria = example.createCriteria();
            criteria.andIdIn(ids);
            bookDao.updateByExampleSelective(record,example);
        }catch (Exception e){
            logger.error(e.getMessage(),e);
            e.printStackTrace();
        }
        return i;
    }

    @Override
    public Result<NBookCustom> listBooksByPage(Page page, BookQuery query) {
        Result<NBookCustom> result = null;
        try{
            Map<String,Object> map = new HashMap<String,Object>();
            map.put("page",page);
            map.put("query",query);
            result = new Result<NBookCustom>();
            result.setTotal(bookCustomDao.countBooks());
            result.setRows(bookCustomDao.listBooksByPage(map));

        }catch (Exception e){
            logger.error(e.getMessage(),e);
            e.printStackTrace();
        }
        return result;
    }

    @Override
    public NBook findBookById(Long bid) {
        NBook book = null;
        try{
            book = bookDao.selectByPrimaryKey(bid);
        }catch (Exception e){
            logger.error(e.getMessage(),e);
            e.printStackTrace();
        }
        return book;
    }

    @Override
    public NBookDesc findDescById(Long bid) {
        NBookDesc bookDesc = null;
        try{
            bookDesc = bookDescDao.selectByPrimaryKey(bid);
        }catch (Exception e){
            logger.error(e.getMessage(),e);
            e.printStackTrace();
        }
        return bookDesc;
    }
}
