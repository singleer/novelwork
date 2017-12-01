package com.qf.novelwork.service.impl;

import com.qf.novel.dao.NBookCatMapper;
import com.qf.novel.dao.NBookSearchCustomMapper;
import com.qf.novel.dao.SearchBookDao;
import com.qf.novel.pojo.po.NBookCat;
import com.qf.novel.pojo.po.NBookCatExample;
import com.qf.novel.pojo.vo.NBookSearchCustom;
import com.qf.novel.pojo.vo.NSearchBookResult;
import com.qf.novel.service.SearchBookService;
import org.apache.solr.client.solrj.SolrQuery;
import org.apache.solr.client.solrj.SolrServer;
import org.apache.solr.client.solrj.SolrServerException;
import org.apache.solr.common.SolrInputDocument;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;


import java.io.IOException;
import java.util.List;

@Service
public class SearchBookServiceImpl implements SearchBookService {

    @Autowired
    private NBookCatMapper bookCatDao;

    @Autowired
    private NBookSearchCustomMapper bookSearchCustomDao;

    @Autowired
    private SolrServer solrServer;

    @Autowired
    private SearchBookDao searchBookDao;
    @Override
    public boolean importAllBooks() {
        //采集数据
        List<NBookSearchCustom> list = bookSearchCustomDao.listSearchBooks();

        for (NBookSearchCustom bookSearchCustom : list){
            SolrInputDocument document = new SolrInputDocument();
            document.addField("id",bookSearchCustom.getId());
            document.addField("book_title",bookSearchCustom.getTitle());
            document.addField("book_read_point",bookSearchCustom.getReadPoint());
            document.addField("book_score",bookSearchCustom.getScore());
            document.addField("book_image",bookSearchCustom.getImage());
            document.addField("book_category_name",bookSearchCustom.getCatName());
            document.addField("book_author_name",bookSearchCustom.getAuthorName());
            document.addField("book_category_parent_name",bookSearchCustom.getCatParentName());
            document.addField("book_status",bookSearchCustom.getStatus());
            document.addField("book_attribute",bookSearchCustom.getAttribute());
            document.addField("book_count",bookSearchCustom.getCount());
            //写入索引库
            try {
                solrServer.add(document);
            } catch (SolrServerException e) {
                e.printStackTrace();
            } catch (IOException e) {
                e.printStackTrace();
            }
        }
        //提交
        try {
            solrServer.commit();
        } catch (SolrServerException e) {
            e.printStackTrace();
        } catch (IOException e) {
            e.printStackTrace();
        }
        return true;
    }

    @Override
    public NSearchBookResult search(String keyword, Integer page, int rows) {
        //创建一个SolrQuery对象
        System.out.println(1111111122);

        SolrQuery query = new SolrQuery();
        //设置查询条件
        query.setQuery(keyword);
        //设置分页条件
        if (page <=0 ) page = 1;
        query.setStart((page - 1) * rows);
        query.setRows(rows);
        //设置默认搜索域
        query.set("df", "book_keywords");
        //开启高亮显示
        query.setHighlight(true);
        query.addHighlightField("book_title");
        query.setHighlightSimplePre("<em style=\"color:red\">");
        query.setHighlightSimplePost("</em>");
        //调用dao执行查询
        NSearchBookResult searchResult = searchBookDao.search(query);
        //计算总页数
        long recordCount = searchResult.getRecordCount();
        int totalPage = (int)((recordCount+rows-1)/rows);

        //添加到返回结果
        searchResult.setTotalPages(totalPage);
        //返回结果
        return searchResult;
    }

    @Override
    public List<NBookSearchCustom> searchByCatParentName(int catParentName) {

        NBookCatExample example =new NBookCatExample();
        NBookCatExample.Criteria criteria =example.createCriteria();
        criteria.andIdEqualTo((long)catParentName);

        List<NBookCat> nBookCats = bookCatDao.selectByExample(example);
        String name = nBookCats.get(0).getName();


        //创建一个SolrQuery对象

        SolrQuery query = new SolrQuery();
        //设置查询条件
        query.setQuery(name);
        //设置分页条件
        query.setStart(0);
        query.setRows(5);
        //设置默认搜索域
        query.set("df", "book_category_parent_name");

        query.setHighlight(true);
        query.addHighlightField("book_title");
        query.setHighlightSimplePre("<em style=\"color:red\">");
        query.setHighlightSimplePost("</em>");
        //调用dao执行查询
        NSearchBookResult searchResult = searchBookDao.search(query);



        return searchResult.getBookList();
    }

    @Override
    public List<String> searchCatNames(int catParentNames) {
        Integer catParentName = catParentNames;
        List<String> catNames =  bookSearchCustomDao.getCatNameByParent(catParentName);
        return catNames;
    }
}
