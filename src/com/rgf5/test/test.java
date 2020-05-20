package com.rgf5.test;
import com.rgf5.bean.Admin;
import com.rgf5.dao.BaseDao;
import com.rgf5.utils.JDBCUtils;
import org.junit.Test;

import java.lang.reflect.Method;
import java.sql.Connection;
import java.util.List;

/**
 * @ClassName test
 * @Description: TODO
 * @Author 31637
 * @Date 2020/5/18
 * @Version V1.0
 **/
public class test {

    /**
     * 测试连接数据库
     */
    @Test
    public void test(){
        Connection connection = JDBCUtils.getConnection();
        System.out.println(connection);
        JDBCUtils.close(connection);
    }

    /**
     * 查询方法测试
     */
    @Test
    public void test1(){
        String sql = "select id,admin_id as adminId,passWd from admins";
        //String sql = "select id,admin_id as adminId,passWd from admins where id=? and passWd = ?";
        Admin admin = BaseDao.getBean(sql, Admin.class);
        System.out.println(admin);
    }

    /**
     * 插入
     */
    @Test
    public void test2(){
        String sql = "insert into admins values(?,?,?)";
        boolean update = BaseDao.update(sql,null,"123","123456");
        sql = "select * from admins";
        List<Admin> beanList = BaseDao.getBeanList(sql, Admin.class);
        System.out.println(update);
        System.out.println(beanList);
    }

    /**
     * 修改
     */
    @Test
    public void test3(){
        String sql = "update admins set passWd = ? where id=?";
        boolean update = BaseDao.update(sql,"666",3);
        sql = "select * from admins";
        List<Admin> beanList = BaseDao.getBeanList(sql, Admin.class);
        System.out.println(update);
        System.out.println(beanList);
    }

    /**
     * 删除
     */
    @Test
    public void test4(){
        String sql = "delete from admins where id=?";
        boolean update = BaseDao.update(sql,3);
        sql = "select * from admins";
        List<Admin> beanList = BaseDao.getBeanList(sql, Admin.class);
        System.out.println(update);
        System.out.println(beanList);
    }

    @Test
    public void test5(){
        Method[] declaredMethods = Admin.class.getDeclaredMethods();
        for (Method method : declaredMethods) {
            System.out.println(method.getName());
        }
    }
}
