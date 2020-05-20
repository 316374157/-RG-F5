package com.rgf5.bean;

/**
 * @ClassName DateBank
 * @Description: TODO
 * @Author 31637
 * @Date 2020/5/18
 * @Version V1.0
 **/
public class DateBank {

//            id INT PRIMARY KEY AUTO_INCREMENT,
//            data_name VARCHAR(20) NOT NULL,
//    data_path VARCHAR(50) NOT NULL,
//    class_id  VARCHAR(20) NOT NULL,
//    course_id VARCHAR(20) NOT NULL,
//    data_type VARCHAR(20)

    /**
     * 主键
     */
    private int id;
    /**
     * 文件名
     */
    private String dataName;
    /**
     * 文件路径
     */
    private String dataPath;
    /**
     * 班级id
     */
    private String classId;
    /**
     * 课程id
     */
    private String courseId;
    /**
     * 文件类型
     */
    private String dataType;

    public DateBank() {
    }

    public DateBank(int id, String dataName, String dataPath, String classId, String courseId, String dataType) {
        this.id = id;
        this.dataName = dataName;
        this.dataPath = dataPath;
        this.classId = classId;
        this.courseId = courseId;
        this.dataType = dataType;
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getDataName() {
        return dataName;
    }

    public void setDataName(String dataName) {
        this.dataName = dataName;
    }

    public String getDataPath() {
        return dataPath;
    }

    public void setDataPath(String dataPath) {
        this.dataPath = dataPath;
    }

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

    public String getDataType() {
        return dataType;
    }

    public void setDataType(String dataType) {
        this.dataType = dataType;
    }

    @Override
    public String toString() {
        return "DateBank{" +
                "id=" + id +
                ", dataName='" + dataName + '\'' +
                ", dataPath='" + dataPath + '\'' +
                ", classId='" + classId + '\'' +
                ", courseId='" + courseId + '\'' +
                ", dataType='" + dataType + '\'' +
                '}';
    }
}
