package com.rgf5.bean;

/**
 * @ClassName DateBank
 * @Description: TODO
 * @Author 31637
 * @Date 2020/5/18
 * @Version V1.0
 **/
public class DataBank {

    /**
     * 主键
     */
    private Integer id;
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
    /**
     * 上传者id
     */
    private Integer authorId;
    /**
     * 上传者姓名
     */
    private String authorName;

    public DataBank() {
    }

    public DataBank(Integer id, String dataName, String dataPath, String classId, String courseId, String dataType, Integer authorId, String authorName) {
        this.id = id;
        this.dataName = dataName;
        this.dataPath = dataPath;
        this.classId = classId;
        this.courseId = courseId;
        this.dataType = dataType;
        this.authorId = authorId;
        this.authorName = authorName;
    }

    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
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
    public Integer getAuthorId() {
        return authorId;
    }

    public void setAuthorId(Integer authorId) {
        this.authorId = authorId;
    }

    public String getAuthorName() {
        return authorName;
    }

    public void setAuthorName(String authorName) {
        this.authorName = authorName;
    }

    @Override
    public String toString() {
        return "DataBank{" +
                "id=" + id +
                ", dataName='" + dataName + '\'' +
                ", dataPath='" + dataPath + '\'' +
                ", classId='" + classId + '\'' +
                ", courseId='" + courseId + '\'' +
                ", dataType='" + dataType + '\'' +
                ", authorId=" + authorId +
                ", authorName='" + authorName + '\'' +
                '}';
    }
}
