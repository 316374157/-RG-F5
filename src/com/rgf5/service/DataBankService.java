package com.rgf5.service;

import com.rgf5.bean.Classes;
import com.rgf5.bean.Course;
import com.rgf5.bean.DataBank;
import com.rgf5.bean.Teacher;

import java.util.LinkedHashMap;
import java.util.List;

/**
 * @author 31637 资料库的事务控制
 */
public interface DataBankService {


    /**
     * 添加一个文件
     * @param dataBank 添加的文件
     * @return true表示添加成功
     */
    public boolean add(DataBank dataBank);
    /**
     * 文件的信息更新
     * @param dataBank 更新过的文件
     * @return True表示更新成功
     */
    public boolean update(DataBank dataBank);

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
     * @param dataBank 文件对象
     * @return 文件的所有信息
     */
    public List<DataBank> getBeanByDataName(DataBank dataBank);
    /**
     * 通过文件路径获取文件信息
     * @param dataBank 文件对象
     * @return 一份文件的信息
     */
    public DataBank getBeanByDataPath(DataBank dataBank);

    /**
     * 通过文件id获取文件对象
     * @param dataBank 文件对象
     * @return 该文件的信息
     */
    public DataBank getBeanById(DataBank dataBank);
    /**
     * 通过班级ID获取文件信息
     * @param classes 班级对象
     * @return 一个班级的所有文件信息
     */
    public List<DataBank> getBeanListByClassId(Classes classes);
    /**
     * 通过课程ID获取文件信息
     * @param course 课程对象
     * @return 一个课程的所有文件信息
     */
    public List<DataBank> getBeanListByCourseId(Course course);
    /**
     * 通过文件类型获取文件信息
     * @param dataBank 文件对象
     * @return 一个类型的所有文件信息
     */
    public List<DataBank> getBeanListByDataType(DataBank dataBank);

    /**
     * 查找这个老师可见的文件
     * @param teacher 老师对象
     * @return 这个老师可见的文件
     */
    public List<DataBank> teacherGetAll(Teacher teacher);

    /**
     * 通过课程和班级获取文件并按照类型分类
     * @param course 课程对象
     * @param classes 班级对象
     * @return 该班级和该课程的所有文件
     */
    public LinkedHashMap<String, List<DataBank>> getFileByCourseIdAndClassId(Course course,Classes classes);
}
