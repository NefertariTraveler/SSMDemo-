package com.javacto.service.Impl;

import com.javacto.mapper.UserMapper;
import com.javacto.po.User;
import com.javacto.service.UserService;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import javax.annotation.Resource;
import java.util.List;

/**
 * liu
 **/
@Service
@Transactional
public class UserServiceImpl implements UserService {
    @Resource
    private UserMapper userMapper;

    @Override
    public List<User> queryAll() {
        return userMapper.queryAll();
    }

    @Override
    public int addUser(User user) {
        return userMapper.addUser(user);
    }

    @Override
    public int deleteUser(int tid) {
        return userMapper.deleteUser(tid);
    }

    @Override
    public User findById(int tid) {
        return userMapper.findById(tid);
    }

    @Override
    public int updateUser(User user) {
        return userMapper.updateUser(user);
    }
}
