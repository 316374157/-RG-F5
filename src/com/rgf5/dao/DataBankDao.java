package com.rgf5.dao;

import com.rgf5.bean.DataBank;
import java.util.List;

/**
 * 文件对数据库的操作
 * @author Administrator
 */
public interface DataBankDao {
    /**
     * 添加一个文件
     * @param dataBank 添加的文件
     * @return true表示添加成功
     */
    public boolean add(DataBank dataBank);

    /**
     * 删除一份文件
     * @param dataBank 要删除的文件
     * @return true表示删除成功
     */
    public boolean delete(DataBank dataBank);
    /**
     * 获取所有的文件信息
     * @return 所有的文件信息
     */
    public List<DataBank> getBeanListAll();
    /**
     * 通过文件名获取文件信息
     * @param dataName 文件名
     * @return 文件的所有信息
     */
    public List<DataBank> getBeanByDataName(String dataName);
    /**
     * 通过文件路径获取文件信息
     * @param dataPath 文件路径
     * @return 一份文件的信息
     */
    public DataBank getBeanByDataPath(String dataPath);
    /**
     * 通过班级ID获取文件信息
     * @param classId 班级ID
     * @return 一个班级的所有文件信息
     */
    public List<DataBank> getBeanListByClassId(String classId);
    /**
     * 通过课程ID获取文件信息
     * @param courseId 课程ID
     * @return 一个课程的所有文件信息
     */
    public List<DataBank> getBeanListByCourseId(String courseId);

    /**
     * 通过文件类型获取文件信息
     * @param dataType 文件类型
     * @return 一个类型的所有文件信息
     */
    public List<DataBank> getBeanListByDataType(String dataType);

    /**
     * 通过提交人查找文件
     * @param authorId 个人编号
     * @param authorName 个人姓名
     * @return 查找到的文件对象
     */
    public List<DataBank> getBeanListByPerson(Integer authorId,String authorName);

    /**
     * 通过班级和课程查找文件
     * @param courseId 课程号
     * @param classId 班级号
     * @return 找到的文件信息
     */
    List<DataBank> getFileByCourseIdAndClassId(String courseId, String classId);
}
