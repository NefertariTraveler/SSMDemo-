package com.javacto.mapper;

import com.javacto.po.User;

import java.util.List;

/**
 * liu
 **/
public interface UserMapper {
    public List<User> queryAll();
    public int addUser(User user);
    public int deleteUser(int tid);
    public User findById(int tid);
    public int updateUser(User user);
}
