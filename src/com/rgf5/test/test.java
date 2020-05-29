package com.rgf5.test;
import com.rgf5.utils.JDBCUtils;
import java.sql.Connection;
import org.junit.Test;

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
    }


}
