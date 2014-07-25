package com.shecc.cloud.app.service;

import java.util.List;

import com.shecc.cloud.app.model.User;

public interface UserServiceI {
    public List<User> getUserById(int start, int rows, String userId);

    public List<User> getAll(int start, int rows);

    public void saveUser(User user);

    public void updateUser(User user);

    public void delUserbyId(String userId);

    public int getNumber();

    public boolean isExsist(String username, String password);
}
