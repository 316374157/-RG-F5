package com.rgf5.dao;
import com.rgf5.utils.JDBCUtils;
import org.apache.commons.dbutils.QueryRunner;
import org.apache.commons.dbutils.handlers.BeanHandler;
import org.apache.commons.dbutils.handlers.BeanListHandler;

import java.sql.Connection;
import java.sql.SQLException;
import java.util.List;

/**
 * @ClassName BaseDao
 * @Description: TODO
 * @Author 31637
 * @Date 2020/5/18
 * @Version V1.0
 **/
public abstract class BaseDao {

    /**
     * 数据库操作工具
     */
    private static QueryRunner runner = new QueryRunner();


    /**
     * 查询数据库中的某条数据
     * @param sql sql
     * @param type 要封装的数据类型
     * @param params 每次执行所需要的参数
     * @param <T> 返回泛型
     * @return 返回封装好的对象
     */
    public static <T> T getBean(String sql,Class<T> type,Object ...params){
        Connection con = JDBCUtils.getConnection();
        T bean = null;
        try {
            bean = runner.query(con, sql, new BeanHandler<>(type), params);
        } catch (SQLException e) {
            e.printStackTrace();
        } finally {
            JDBCUtils.close(con);
        }
        return bean;
    }

    /**
     * 获取多条数据
     * @param sql sql语句
     * @param type 要封装的数据类型
     * @param params 可变参数
     * @param <T> 返回值的泛型
     * @return 封装好的列表
     */
    public static <T> List<T>  getBeanList(String sql,Class<T> type,Object ...params){
        Connection con = JDBCUtils.getConnection();
        List<T> beanList = null;
        try {
            beanList = runner.query(con,sql,new BeanListHandler<>(type),params);
        }catch (SQLException e){
            e.printStackTrace();
        }finally {
            JDBCUtils.close(con);
        }
        return beanList;
    }

    /**
     * 增删改一体的方法，能执行增删改的数据库操作
     * @param sql sql
     * @param params 可变参数
     * @return true表示操作成功
     */
    public static boolean update(String sql,Object ...params){
        Connection con = JDBCUtils.getConnection();
        int update = 0;
        try {
            update = runner.update(con, sql, params);
        }catch (SQLException e){
            e.printStackTrace();
        }finally {
            JDBCUtils.close(con);
        }
        return update>0;
    }
}