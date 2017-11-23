package com.qf.novelwork.service.impl;

import com.qf.novel.dao.NAdminMapper;
import com.qf.novel.pojo.po.NAdmin;
import com.qf.novel.service.NAdminService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

/**
 * User: Administrator
 * Date: 2017/11/18
 * Time: 10:53
 * Version:V1.0
 */
@Service
public class NAdminServiceImpl implements NAdminService {
    @Autowired
    private NAdminMapper nAdminMapper;
    @Override
    public NAdmin selectByadminname(NAdmin nAdmin) {
        return nAdminMapper.selectByadminname(nAdmin);
    }
}
