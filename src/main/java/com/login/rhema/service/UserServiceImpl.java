package com.login.rhema.service;

import com.login.rhema.dao.UserDao;
import com.login.rhema.model.Login;
import com.login.rhema.model.User;
import org.springframework.beans.factory.annotation.Autowired;

public class UserServiceImpl implements UserService{
    @Autowired
    public UserDao userDao;

    public void register(User user){
        userDao.register(user);
    }
    public User validateUser(Login login){
        return userDao.validateUser(login);
    }
}
