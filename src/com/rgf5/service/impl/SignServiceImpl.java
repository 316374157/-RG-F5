package com.rgf5.service.impl;

import com.rgf5.bean.Classes;
import com.rgf5.bean.Course;
import com.rgf5.bean.Sign;
import com.rgf5.bean.Student;
import com.rgf5.dao.SignDao;
import com.rgf5.dao.impl.SignDaoImpl;
import com.rgf5.service.SignService;

import java.util.List;

/**
 * @ClassName SignServiceImpl
 * @Description: TODO
 * @Author 31637
 * @Date 2020/6/3
 * @Version V1.0
 **/
public class SignServiceImpl implements SignService {

    private SignDao signDao = new SignDaoImpl();

    @Override
    public boolean add(Sign sign) {
        return false;
    }

    @Override
    public boolean update(Sign sign) {
        return false;
    }

    @Override
    public boolean delete(Sign sign) {
        return false;
    }

    @Override
    public void signStudent(Student student, Sign sign) {
        sign.setStudentId(student.getUsername());
        sign.setStudentName(student.getStudentName());
        Sign signInfoOld = signDao.getSignInfo(sign);
        if(signInfoOld!=null){
            sign.setId(signInfoOld.getId());
            if(sign.getSign1()==null){
                sign.setSign1(signInfoOld.getSign1());
            }
            if(sign.getSign2()==null){
                sign.setSign2(signInfoOld.getSign2());
            }
            if(sign.getSign3()==null){
                sign.setSign3(signInfoOld.getSign3());
            }
            if(sign.getSign4()==null){
                sign.setSign4(signInfoOld.getSign4());
            }
            if(sign.getSign5()==null){
                sign.setSign5(signInfoOld.getSign5());
            }
            signDao.update(sign);
        }else {
            signDao.add(sign);
        }
        System.out.println(sign);
    }

    @Override
    public List<Sign> getBeanListAll() {
        return signDao.getBeanListAll();
    }

    @Override
    public List<Sign> getBeanListByStudentId(Student student) {
        return signDao.getBeanListByStudentId(student.getUsername());
    }

    @Override
    public List<Sign> getBeanListByClassId(Classes classes) {
        return null;
    }

    @Override
    public List<Sign> getBeanListByCourseId(Course course) {
        return null;
    }
}
