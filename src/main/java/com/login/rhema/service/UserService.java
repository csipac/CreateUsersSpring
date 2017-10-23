package com.login.rhema.service;

import com.login.rhema.model.Login;
import com.login.rhema.model.User;

public interface UserService {
    void register(User user);

    User validateUser(Login login);
}
