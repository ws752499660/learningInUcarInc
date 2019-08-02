package tk.quan9.javaweb.hanabisuki.service;

import tk.quan9.javaweb.hanabisuki.entity.User;

public interface UserService {
    public boolean check(String id,String passWord);

    public User getUserById(String id);
}
