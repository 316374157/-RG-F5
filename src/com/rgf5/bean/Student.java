package com.rgf5.bean;

/**
 * @ClassName Student
 * @Description: TODO
 * @Author 31637
 * @Date 2020/5/18
 * @Version V1.0
 **/
public class Student {

    /**
     * 主键，自增
     */
    private int id;
    /**
     * 学生id
     */
    private String studentId;
    /**
     * 密码
     */
    private String passWd;
    /**
     * 性别
     */
    private String sex;
    /**
     * 班级id
     */
    private String classId;
    /**
     * 学生姓名
     */
    private String studentName;

    public Student() {
    }

    public Student(int id, String studentId, String passWd, String sex, String classId,String studentName) {
        this.id = id;
        this.studentId = studentId;
        this.passWd = passWd;
        this.sex = sex;
        this.classId = classId;
        this.studentName = studentName;
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

    public String getStudentName() {
        return studentName;
    }

    public void setStudentName(String studentName) {
        this.studentName = studentName;
    }
}
