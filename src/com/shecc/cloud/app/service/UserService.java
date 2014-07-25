package com.shecc.cloud.app.service;

import com.shecc.cloud.app.model.User;

public interface UserService {

    public void deleteUser(Long uid);

    public User getOneUser(Long uid);

    boolean isExsist(String name, String passwd);
}
