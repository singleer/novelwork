package com.qf.novel.dao;

import com.qf.novel.pojo.vo.ReplyCustom;

import java.util.List;
import java.util.Map; /**
 * User: LXH
 * Date: 2017/11/23 0023
 * Time: 15:33
 */
public interface NReplyCustomMapper {


    int countReplys(Long pid);

    List<ReplyCustom> listReplysByPage(Map<String, Object> map);
}
