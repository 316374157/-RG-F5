package com.rgf5.bean;

/**
 * @ClassName Student
 * @Description: TODO
 * @Author 31637
 * @Date 2020/5/18
 * @Version V1.0
 **/
public class Student {

    private int id;/**主键，自增*/

    private String studentId;/**学生id*/

    private String passWd;/**密码*/

    private String sex;/**性别*/

    private String classId;/**班级id*/

    public Student() {
    }

    public Student(int id, String studentId, String passWd, String sex, String classId) {
        this.id = id;
        this.studentId = studentId;
        this.passWd = passWd;
        this.sex = sex;
        this.classId = classId;
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getStudentId() {
        return studentId;
    }

    public void setStudentId(String studentId) {
        this.studentId = studentId;
    }

    public String getPassWd() {
        return passWd;
    }

    public void setPassWd(String passWd) {
        this.passWd = passWd;
    }

    public String getSex() {
        return sex;
    }

    public void setSex(String sex) {
        this.sex = sex;
    }

    public String getClassId() {
        return classId;
    }

    public void setClassId(String classId) {
        this.classId = classId;
    }

    @Override
    public String toString() {
        return "Student{" +
                "id=" + id +
                ", studentId='" + studentId + '\'' +
                ", passWd='" + passWd + '\'' +
                ", sex='" + sex + '\'' +
                ", classId='" + classId + '\'' +
                '}';
    }
}
