package org.example.login.service;

import org.example.login.model.User;

public class UserService {

    public boolean validateUser(User user) {
        // 此处示例使用固定的用户名和密码进行验证
        return "admin".equals(user.getUsername()) && "password".equals(user.getPassword());
    }
}