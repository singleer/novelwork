package com.qf.novel.dao;

import com.qf.novel.pojo.po.NAdmin;
import com.qf.novel.pojo.po.NAdminExample;
import org.apache.ibatis.annotations.Param;

import java.util.List;

public interface NAdminMapper {
    int countByExample(NAdminExample example);

    int deleteByExample(NAdminExample example);

    int deleteByPrimaryKey(Long id);

    int insert(NAdmin record);

    int insertSelective(NAdmin record);

    List<NAdmin> selectByExample(NAdminExample example);

    NAdmin selectByPrimaryKey(Long id);

    int updateByExampleSelective(@Param("record") NAdmin record, @Param("example") NAdminExample example);

    int updateByExample(@Param("record") NAdmin record, @Param("example") NAdminExample example);

    int updateByPrimaryKeySelective(NAdmin record);

    int updateByPrimaryKey(NAdmin record);

    NAdmin selectByadminname(NAdmin nAdmin);
}