package com.shecc.cloud.app.model;

import java.text.SimpleDateFormat;
import java.util.Date;

public class Log {
    Long id;
    Date operatetime;
    String operateclass;
    String operategrade;
    String operateinfo;
    String operateaccount;
    String operateip;

    public Long getId() {
        return id;
    }

    public void setId(Long id) {
        this.id = id;
    }

    public String getOperatetime() {
        SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd hh:mm:ss");
        return sdf.format(operatetime);
    }

    public void setOperatetime(Date operatetime) {
        this.operatetime = operatetime;
    }

    public String getOperateclass() {
        return operateclass;
    }

    public void setOperateclass(String operateclass) {
        this.operateclass = operateclass;
    }

    public String getOperategrade() {
        return operategrade;
    }

    public void setOperategrade(String operategrade) {
        this.operategrade = operategrade;
    }

    public String getOperateinfo() {
        return operateinfo;
    }

    public void setOperateinfo(String operateinfo) {
        this.operateinfo = operateinfo;
    }

    public String getOperateaccount() {
        return operateaccount;
    }

    public void setOperateaccount(String operateaccount) {
        this.operateaccount = operateaccount;
    }

    public String getOperateip() {
        return operateip;
    }

    public void setOperateip(String operateip) {
        this.operateip = operateip;
    }
}
