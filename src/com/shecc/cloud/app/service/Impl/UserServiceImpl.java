package com.shecc.cloud.app.service.Impl;

import java.util.HashMap;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.shecc.cloud.app.dao.BankLogMapper;
import com.shecc.cloud.app.dao.UserMapper;
import com.shecc.cloud.app.model.User;
import com.shecc.cloud.app.service.UserService;

@Service("UserService")
public class UserServiceImpl implements UserService {
    @Autowired
    private UserMapper userDao;
    @Autowired
    private BankLogMapper logDao;

    public void deleteUser(Long uid) {
        userDao.deleteUser(uid);
    }

    public User getOneUser(Long uid) {
        User user = userDao.getUser(uid);
        return user;
    }

    public void updateUser(User user) {
        userDao.updateUser(user);
    }

    @Override
    public boolean isExsist(String name, String passwd) {
        Map<String, String> map = new HashMap<String, String>();
        map.put("name", name);
        map.put("passwd", passwd);
        User u = userDao.isExist(map);
        if (u != null) {
            return true;
        }
        return false;
    }
}
