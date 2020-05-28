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
    private Integer id;
    /**
     * 账号
     */
    private String username;
    /**
     * 密码
     */
    private String passWd;

    public Admin() {
    }

    public Admin(Integer id, String username, String passWd) {
        this.id = id;
        this.username = username;
        this.passWd = passWd;
    }

    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    public String getUsername() {
        return username;
    }

    public void setUsername(String username) {
        this.username = username;
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
                ", username='" + username + '\'' +
                ", passWd='" + passWd + '\'' +
                '}';
    }
}
