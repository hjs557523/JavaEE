package com.hjs.dao;

import com.hjs.entity.User;
import java.util.List;


public interface UserDAO {
    //声明增加和查找方法
    public void saveUser(User user);
    
    public User findUser(User user);
    
    public String updateUser(User user);
    
    public String deleteUser(User user);
}
