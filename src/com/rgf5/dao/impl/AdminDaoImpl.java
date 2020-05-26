package com.rgf5.dao.impl;


import com.rgf5.bean.Admin;
import com.rgf5.dao.AdminDao;
import com.rgf5.dao.BaseDao;

/**
 * @ClassName AdminDaoImpl
 * @Description: TODO
 * @Author 31637
 * @Date 2020/5/20
 * @Version V1.0
 **/
public class AdminDaoImpl implements AdminDao {
    @Override
    public Admin getBean(Admin admin) {
        String sql = "select id,username,passWd from admins where username and passWd=?";
        return BaseDao.getBean(sql, Admin.class, admin.getUsername(),admin.getPassWd());
    }

    @Override
    public boolean update(Admin admin) {
        String sql= "update admins set passWd=? where admin_id=?";
        return BaseDao.update(sql,admin.getPassWd(),admin.getUsername());
    }
}
