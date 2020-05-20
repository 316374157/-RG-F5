package com.rgf5.bean;

/**
 * @ClassName Admin 管理员实体
 * @Description: TODO
 * @Author 31637
 * @Date 2020/5/18
 * @Version V1.0
 **/
public class Admin {
    /**
     * 主键，自增
     */
    private int id;
    /**
     * 账号
     */
    private String adminId;
    /**
     * 密码
     */
    private String passWd;

    public Admin() {
    }

    public Admin(int id, String adminId, String passWd) {
        this.id = id;
        this.adminId = adminId;
        this.passWd = passWd;
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getAdminId() {
        return adminId;
    }

    public void setAdminId(String adminId) {
        this.adminId = adminId;
    }

    public String getPassWd() {
        return passWd;
    }

    public void setPassWd(String passWd) {
        this.passWd = passWd;
    }

    @Override
    public String toString() {
        return "Admin{" +
                "id=" + id +
                ", adminId='" + adminId + '\'' +
                ", passWd='" + passWd + '\'' +
                '}';
    }
}
