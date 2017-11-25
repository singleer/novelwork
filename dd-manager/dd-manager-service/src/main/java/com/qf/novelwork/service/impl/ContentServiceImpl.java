package com.qf.novelwork.service.impl;

import com.qf.novel.common.jedis.JedisClient;
import com.qf.novel.common.util.JsonUtils;
import com.qf.novel.dao.NContentMapper;
import com.qf.novel.pojo.po.NContent;
import com.qf.novel.pojo.po.NContentExample;
import com.qf.novel.service.ContentService;
import org.apache.commons.lang3.StringUtils;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

/**
 * User: LXH
 * Date: 2017/11/24 0024
 * Time: 17:54
 */
@Service
public class ContentServiceImpl implements ContentService{

    private Logger logger = LoggerFactory.getLogger(this.getClass());
    @Autowired
    private NContentMapper contentDao;
    @Autowired
    private JedisClient jedisClient;

    @Override
    public List<NContent> listContentsByCid(Long id) {
        List<NContent> list = null;
        //查询缓存部分
        try {
            String json = jedisClient.hget("CONTENT_LIST", id + "");
            if(StringUtils.isNotBlank(json)){
                return JsonUtils.jsonToList(json, NContent.class);
            }
        } catch (Exception e) {
            logger.error(e.getMessage(), e);
            e.printStackTrace();
        }
        //主体业务部分
        //创建模板
        NContentExample example = new NContentExample();
        NContentExample.Criteria criteria = example.createCriteria();
        criteria.andCidEqualTo(id);

        //执行查询
        list = contentDao.selectByExample(example);

        //存入缓存部分
        try {
            jedisClient.hset("CONTENT_LIST", id + "", JsonUtils.objectToJson(list));
        } catch (Exception e) {
            logger.error(e.getMessage(), e);
            e.printStackTrace();
        }
        return list;

    }
}
