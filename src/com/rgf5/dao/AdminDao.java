package com.rgf5.dao;

import com.rgf5.bean.Admin;

public interface AdminDao {
    /**
     * 通过已有对象从数据库中获取数据
     * @param admin 已有对象
     * @return 数据库中的数据
     */
    public Admin getBean(Admin admin);

    /**
     * 管理员修改自身的资料
     * @param admin 改好资料的管理员
     * @return true表示修改成功
     */
    public boolean update(Admin admin);
}
