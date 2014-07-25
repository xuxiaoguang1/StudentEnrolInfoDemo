package com.shecc.cloud.app.dao;

import java.util.Map;

import com.shecc.cloud.app.model.User;

public interface UserMapper {
    /*
     * public List<User> selectById(@Param(value = "start") int start,
     * 
     * @Param(value = "rows") int rows,
     * 
     * @Param(value = "userId") String userId);
     * 
     * public List<User> selectAll(@Param(value = "start") int start,
     * 
     * @Param(value = "rows") int rows);
     */

    public void insertUser(User user);

    public void updateUser(User user);

    public void deleteUser(Long uid);

    public User getUser(Long uid);

    public User isExist(Map<String, String> map);
}
