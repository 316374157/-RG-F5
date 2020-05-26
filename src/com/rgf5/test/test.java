package com.rgf5.test;
import com.rgf5.bean.DataBank;
import com.rgf5.dao.DataBankDao;
import com.rgf5.dao.impl.DataBankDaoImpl;
import com.rgf5.utils.JDBCUtils;
import org.junit.Test;

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
        DataBankDao dataBankDao = new DataBankDaoImpl();
        DataBank dataBank =
        new DataBank(0, "1.ioc", "D:/JAVA/Java-IDE/git-RG-F5/web/databank/001/001/1.ico","001","001","图片");
        dataBankDao.add(dataBank);
        List<DataBank> beanListAll = dataBankDao.getBeanListAll();
        System.out.println(beanListAll);
    }


}
