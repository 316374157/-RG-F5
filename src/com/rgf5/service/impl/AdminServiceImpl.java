package com.rgf5.service.impl;

import com.rgf5.bean.Admin;
import com.rgf5.dao.AdminDao;
import com.rgf5.dao.impl.AdminDaoImpl;
import com.rgf5.service.AdminService;

/**
 * @ClassName AdminServiceImpl
 * @Description: TODO
 * @Author 31637
 * @Date 2020/5/24
 * @Version V1.0
 **/
public class AdminServiceImpl implements AdminService {

    AdminDao adminDao = new AdminDaoImpl();

    @Override
    public Admin login(Admin admin) {
        return adminDao.getBean(admin);
    }

    @Override
    public boolean update(Admin admin) {
        return false;
    }
}
