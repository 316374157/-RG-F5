package com.rgf5.service.impl;

import com.rgf5.bean.Classes;
import com.rgf5.bean.Course;
import com.rgf5.bean.DataBank;
import com.rgf5.bean.Teacher;
import com.rgf5.dao.DataBankDao;
import com.rgf5.dao.impl.DataBankDaoImpl;
import com.rgf5.service.DataBankService;

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
        return false;
    }

    @Override
    public boolean update(DataBank dataBank) {
        return false;
    }

    @Override
    public boolean delete(DataBank dataBank) {
        return false;
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
}
