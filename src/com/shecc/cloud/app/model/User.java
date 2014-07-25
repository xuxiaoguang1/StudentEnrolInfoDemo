package com.shecc.cloud.app.model;


public class User {
    private Long uid;
    private String name;
    private Integer age;
    private String phone;
    private String passwd;

    public Long getUid() {
        return uid;
    }

    public void setUid(Long uid) {
        this.uid = uid;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public Integer getAge() {
        return age;
    }

    public void setAge(Integer age) {
        this.age = age;
    }

    public String getPhone() {
        return phone;
    }

    public void setPhone(String phone) {
        this.phone = phone;
    }

    public String getPasswd() {
        return passwd;
    }

    public void setPasswd(String passwd) {
        this.passwd = passwd;
    }

    public User(Long uid, String name, Integer age, String phone, String passwd) {
        this.uid = uid;
        this.name = name;
        this.age = age;
        this.phone = phone;
        this.passwd = passwd;
    }

    public User(String name, Integer age, String phone, String passwd) {
        this.name = name;
        this.age = age;
        this.phone = phone;
        this.passwd = passwd;
    }

    public User() {
    }
}
