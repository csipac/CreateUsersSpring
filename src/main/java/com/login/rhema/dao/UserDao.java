package com.login.rhema.dao;

import com.login.rhema.model.Login;
import com.login.rhema.model.User;

public interface UserDao {

    void register(User user);

    User validateUser(Login login);

}
