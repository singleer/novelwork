package com.qf.novelwork.service.impl;

import com.qf.novel.common.dto.Order;
import com.qf.novel.common.dto.Page;
import com.qf.novel.common.dto.Result;
import com.qf.novel.common.dto.TreeNode;
import com.qf.novel.dao.NAuthorMapper;
import com.qf.novel.dao.NBookCatCustomMapper;
import com.qf.novel.dao.NBookCatMapper;
import com.qf.novel.pojo.po.NAuthor;
import com.qf.novel.pojo.po.NAuthorExample;
import com.qf.novel.pojo.po.NBookCat;
import com.qf.novel.pojo.po.NBookCatExample;
import com.qf.novel.pojo.vo.NBookCatQuery;
import com.qf.novel.service.IBookCatService;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.*;

/**
 * User: LXH
 * Date: 2017/11/21 0021
 * Time: 17:56
 */
@Service
public class BookCatServiceImpl implements IBookCatService {

    private Logger logger = LoggerFactory.getLogger(this.getClass());

    @Autowired
    private NBookCatMapper bookCatDao;
    @Autowired
    private NAuthorMapper authorDao;
    @Autowired
    private NBookCatCustomMapper bookCatCustomDao;

    @Override
    public List<TreeNode> listItemCatsByPid(Long parentId) {
        List<TreeNode> treeNodeList = null;
        try{
            NBookCatExample example = new NBookCatExample();
            NBookCatExample.Criteria criteria = example.createCriteria();
            criteria.andParentIdEqualTo(parentId);
            //执行查询
            List<NBookCat> itemCatList = bookCatDao.selectByExample(example);
            //要序列化成json列表对象
            treeNodeList = new ArrayList<TreeNode>();
            //遍历原有列表生成新的列表
            for(int i=0;i<itemCatList.size();i++){
                NBookCat itemCat = itemCatList.get(i);
                TreeNode treeNode = new TreeNode();
                treeNode.setId(itemCat.getId());
                treeNode.setText(itemCat.getName());
                treeNode.setState(itemCat.getIsparent()==1 ? "closed" : "open");
                //新列表
                treeNodeList.add(treeNode);
            }

        }catch (Exception e){
            logger.error(e.getMessage(), e);
            e.printStackTrace();
        }
        return treeNodeList;
    }

    @Override
    public List<TreeNode> listItemCatsByPid1(Long parentId) {
        List<TreeNode> treeNodeList=null;
        try {
            //创建查询模板
            NBookCatExample example = new NBookCatExample();
            NBookCatExample.Criteria criteria = example.createCriteria();
            criteria.andParentIdEqualTo(parentId);
            //执行查询
            List<NBookCat> itemCatList = bookCatDao.selectByExample(example);
            //要序列化成JSON的列表对象
            treeNodeList = new ArrayList<TreeNode>();
            //遍历原有列表生成新列表
            for (int i=0;i<itemCatList.size();i++){
                NBookCat bookCat = itemCatList.get(i);
                TreeNode treeNode = new TreeNode();
                treeNode.setId(bookCat.getId());
                treeNode.setText(bookCat.getName());

                treeNodeList.add(treeNode);
            }

        }catch (Exception e){
            e.printStackTrace();
        }

        return treeNodeList;
    }

    @Override
    public List<NAuthor> getAuthor() {
        List<NAuthor> list = null;
        try{
            NAuthorExample example = new NAuthorExample();
             list = authorDao.selectByExample(example);

        }catch (Exception e){
            logger.error(e.getMessage(), e);
            e.printStackTrace();
        }
        return list;
    }

    @Override
    public NBookCat findCatById(Long bid) {

        NBookCat bookCat = null;
        try{
            bookCat = bookCatDao.selectByPrimaryKey(bid);

        }catch (Exception e){
            logger.error(e.getMessage(),e);
            e.printStackTrace();
        }
        return bookCat;
    }

    @Override
    public Result<NBookCat> listItemsByPage(Page page, Order order, NBookCatQuery query) {
        Result<NBookCat> result = null;
        try {
            Map<String, Object> map = new HashMap<String, Object>();
            map.put("page", page);
            map.put("order",order);
            map.put("query",query);
            result = new Result<NBookCat>();

            int total = bookCatCustomDao.countBookCats(map);
            result.setTotal(total);

            List<NBookCat> list = bookCatCustomDao.listBookCatsByPage(map);
            result.setRows(list);
        } catch (Exception e) {
            e.printStackTrace();
        }
        return result;
    }

    @Override
    public int updateBatch(List<Long> ids) {
        int i = 0;
        try {
            NBookCat record = new NBookCat();
            record.setStatus(3);
            NBookCatExample example = new NBookCatExample();
            NBookCatExample.Criteria criteria = example.createCriteria();
            criteria.andIdIn(ids);
            i = bookCatDao.updateByExampleSelective(record,example);
        } catch (Exception e) {
            e.printStackTrace();
        }
        return i;
    }

    @Override
    public int updateBatchUp(List<Long> ids) {
        int i = 0;
        try {
            NBookCat record = new NBookCat();
            record.setStatus(1);
            NBookCatExample example = new NBookCatExample();
            NBookCatExample.Criteria criteria = example.createCriteria();
            criteria.andIdIn(ids);
            i = bookCatDao.updateByExampleSelective(record,example);
        } catch (Exception e) {
            e.printStackTrace();
        }
        return i;
    }

    @Override
    public int updateBatchDown(List<Long> ids) {
        int i = 0;
        try {
            NBookCat record = new NBookCat();
            record.setStatus(2);
            NBookCatExample example = new NBookCatExample();
            NBookCatExample.Criteria criteria = example.createCriteria();
            criteria.andIdIn(ids);
            i = bookCatDao.updateByExampleSelective(record,example);
        } catch (Exception e) {
            e.printStackTrace();
        }
        return i;
    }

    @Override
    public int saveItemParam(Long cid, String paramData) {
        int i = 0;
        try {
            NBookCat bookcat =new NBookCat();
            bookcat.setParentId(cid);
            bookcat.setName(paramData);
            bookcat.setStatus(1);
            bookcat.setIsparent(0);
            bookcat.setCreated(new Date());
            bookcat.setUpdated(new Date());
            i=bookCatDao.insert(bookcat);
        } catch (Exception e) {
            e.printStackTrace();
        }
        return i;
    }

    @Override
    public int saveItemParam1(String paramData) {
        int i = 0;
        try {
            NBookCat bookcat =new NBookCat();
            bookcat.setParentId(0L);
            bookcat.setName(paramData);
            bookcat.setStatus(1);
            bookcat.setIsparent(1);
            bookcat.setCreated(new Date());
            bookcat.setUpdated(new Date());
            i=bookCatDao.insert(bookcat);
        } catch (Exception e) {
            e.printStackTrace();
        }
        return i;
    }

    @Override
    public List<NBookCat> listBookCat(Long id) {
        List<NBookCat> list = null;
        try {
            NBookCatExample example = new NBookCatExample();
            NBookCatExample.Criteria criteria = example.createCriteria();
            criteria.andIdEqualTo(id);
            list = bookCatDao.selectByExample(example);
        }catch (Exception e) {
            e.printStackTrace();
        }
        return list;
    }

    @Override
    public int editbookcat1(List<String> ids) {
        int i = 0;
        try {
            NBookCatExample example = new NBookCatExample();
            NBookCatExample.Criteria criteria = example.createCriteria();
            criteria.andNameEqualTo(ids.get(1));
            List<NBookCat> nBookCats = bookCatDao.selectByExample(example);
            NBookCat record = new NBookCat();
            record.setId(nBookCats.get(0).getId());
            record.setName(ids.get(0));
            record.setParentId(nBookCats.get(0).getParentId());
            record.setStatus(nBookCats.get(0).getStatus());
            record.setIsparent(nBookCats.get(0).getIsparent());
            record.setCreated(nBookCats.get(0).getCreated());
            record.setUpdated(new Date());
            i=bookCatDao.updateByExample(record,example);
        } catch (Exception e) {
            e.printStackTrace();
        }
        return i;
    }
}
