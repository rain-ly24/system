package com.service;


import com.pojo.User;

public interface UserService {

    boolean login(String username, String password);

    boolean register(User user);


}
