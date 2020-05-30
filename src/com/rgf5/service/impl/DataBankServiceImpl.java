package com.rgf5.service.impl;

import com.rgf5.bean.Classes;
import com.rgf5.bean.Course;
import com.rgf5.bean.DataBank;
import com.rgf5.bean.Teacher;
import com.rgf5.dao.DataBankDao;
import com.rgf5.dao.impl.DataBankDaoImpl;
import com.rgf5.service.ClassService;
import com.rgf5.service.CourseService;
import com.rgf5.service.DataBankService;

import java.util.ArrayList;
import java.util.LinkedHashMap;
import java.util.List;

/**
 * @ClassName DataBankServiceImpl
 * @Description: TODO
 * @Author 31637
 * @Date 2020/5/28
 * @Version V1.0
 **/
public class DataBankServiceImpl implements DataBankService {

    private DataBankDao dataBankDao = new DataBankDaoImpl();

    @Override
    public boolean add(DataBank dataBank) {
        return dataBankDao.add(dataBank);
    }

    @Override
    public boolean update(DataBank dataBank) {
        return false;
    }

    @Override
    public boolean delete(DataBank dataBank) {
        return dataBankDao.delete(dataBank);
    }

    @Override
    public List<DataBank> getBeanListAll() {
        return null;
    }

    @Override
    public List<DataBank> getBeanByDataName(DataBank dataBank) {
        return null;
    }

    @Override
    public DataBank getBeanByDataPath(DataBank dataBank) {
        return null;
    }

    @Override
    public DataBank getBeanById(DataBank dataBank) {
        return dataBankDao.getBeanById(dataBank.getId());
    }

    @Override
    public List<DataBank> getBeanListByClassId(Classes classes) {
        return null;
    }

    @Override
    public List<DataBank> getBeanListByCourseId(Course course) {
        return null;
    }

    @Override
    public List<DataBank> getBeanListByDataType(DataBank dataBank) {
        return null;
    }

    @Override
    public List<DataBank> teacherGetAll(Teacher teacher) {
        return dataBankDao.getBeanListByPerson(teacher.getId(), teacher.getTeacherName());
    }

    @Override
    public LinkedHashMap<String, List<DataBank>> getFileByCourseIdAndClassId(Course course, Classes classes) {
        ClassService classService = new ClassServiceImpl();
        CourseService courseService = new CourseServiceImpl();
        classes = classService.getBeanByClassName(classes);
        course = courseService.getBeanByCourseName(course);
        LinkedHashMap<String, List<DataBank>> map = new LinkedHashMap<>();
        List<DataBank> file = dataBankDao.getFileByCourseIdAndClassId(course.getCourseId(), classes.getClassId());
        for (DataBank item : file) {
          if(map.get(item.getDataType())==null){
              List<DataBank> list = new ArrayList<>();
              list.add(item);
              map.put(item.getDataType(), list);
          }else {
              List<DataBank> list = map.get(item.getDataType());
              list.add(item);
              map.put(item.getDataType(), list);
          }
        }
        return map;
    }
}
