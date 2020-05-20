package com.rgf5.utils;

import com.mchange.v2.c3p0.ComboPooledDataSource;

import javax.sql.DataSource;
import java.sql.Connection;

/**
 * @ClassName JDBCUtils 数据库连接类
 * @Description: TODO
 * @Author 31637
 * @Date 2020/5/18
 * @Version V1.0
 **/
public class JDBCUtils {

    /**
     * 从配置文件中得到数据源
     */
    private static DataSource dataSource = new ComboPooledDataSource("learn");

    /**
     * 获取连接
     * @return 获取到的连接
     */
    public static Connection getConnection(){
        Connection con = null;
        try {
            con = dataSource.getConnection();
        } catch (Exception e) {
            e.printStackTrace();
        }
        return con;
    }

    /**
     * 关闭连接
     * @param connection 要关闭的连接
     */
    public static void close(Connection connection){
        if (connection != null) {
            try {
                connection.close();
            }catch (Exception e){
                e.printStackTrace();
            }
        }
    }
}
