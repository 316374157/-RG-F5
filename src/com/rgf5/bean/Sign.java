package com.rgf5.bean;

/**
 * @ClassName Sign
 * @Description: TODO
 * @Author 31637
 * @Date 2020/5/18
 * @Version V1.0
 **/
public class Sign {
    /**
     * 主键
     */
    private Integer id;
    /**
     * 学生id
     */
    private String studentId;
    /**
     * 学生姓名
     */
    private  String studentName;
    /**
     * 班级id
     */
    private String classId;
    /**
     * 课程id
     */
    private String courseId;
    /**
     * 第一次签到的
     */
    private String sign1;
    /**
     * 第二次签到
     */
    private String sign2;
    /**
     * 第三次签到
     */
    private String sign3;
    /**
     * 第四次签到
     */
    private String sign4;
    /**
     * 第五次签到
     */
    private String sign5;

    public Sign() {
    }

    public Sign(Integer id, String studentId, String studentName, String classId, String courseId, String sign1, String sign2, String sign3, String sign4, String sign5) {
        this.id = id;
        this.studentId = studentId;
        this.studentName = studentName;
        this.classId = classId;
        this.courseId = courseId;
        this.sign1 = sign1;
        this.sign2 = sign2;
        this.sign3 = sign3;
        this.sign4 = sign4;
        this.sign5 = sign5;
    }

    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    public String getStudentId() {
        return studentId;
    }

    public void setStudentId(String studentId) {
        this.studentId = studentId;
    }

    public String getStudentName() { return studentName; }

    public void setStudentName(String studentName) { this.studentName = studentName; }

    public String getClassId() {
        return classId;
    }

    public void setClassId(String classId) {
        this.classId = classId;
    }

    public String getCourseId() {
        return courseId;
    }

    public void setCourseId(String courseId) {
        this.courseId = courseId;
    }

    public String getSign1() {
        return sign1;
    }

    public void setSign1(String sign1) {
        this.sign1 = sign1;
    }

    public String getSign2() {
        return sign2;
    }

    public void setSign2(String sign2) {
        this.sign2 = sign2;
    }

    public String getSign3() {
        return sign3;
    }

    public void setSign3(String sign3) {
        this.sign3 = sign3;
    }

    public String getSign4() {
        return sign4;
    }

    public void setSign4(String sign4) {
        this.sign4 = sign4;
    }

    public String getSign5() {
        return sign5;
    }

    public void setSign5(String sign5) {
        this.sign5 = sign5;
    }

    @Override
    public String toString() {
        return "Sign{" +
                "id=" + id +
                ", studentId='" + studentId + '\'' +
                ", studentName='" + studentName + '\''+
                ", classId='" + classId + '\'' +
                ", courseId='" + courseId + '\'' +
                ", sign1='" + sign1 + '\'' +
                ", sign2='" + sign2 + '\'' +
                ", sign3='" + sign3 + '\'' +
                ", sign4='" + sign4 + '\'' +
                ", sign5='" + sign5 + '\'' +
                '}';
    }

}
