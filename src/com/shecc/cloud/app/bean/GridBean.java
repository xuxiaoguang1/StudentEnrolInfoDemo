package com.shecc.cloud.app.bean;

import java.util.List;

/**
 * easyui里的grid需要的json对应类
 * 
 * @author xuxg
 * @param <T>
 */
public class GridBean<T> {
    Long total;
    List<T> rows;

    public Long getTotal() {
        return total;
    }

    public void setTotal(Long total) {
        this.total = total;
    }

    public List<T> getRows() {
        return rows;
    }

    public void setRows(List<T> rows) {
        this.rows = rows;
    }
}
