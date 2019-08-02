package tk.quan9.javaweb.hanabisuki.service.impl;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import tk.quan9.javaweb.hanabisuki.entity.User;
import tk.quan9.javaweb.hanabisuki.repository.UserRepository;
import tk.quan9.javaweb.hanabisuki.service.UserService;

@Service
public class UserServiceImpl implements UserService {
    @Autowired
    private UserRepository userRepository;

    public boolean check(String id,String passWord){
        User user=userRepository.getUserById(Integer.parseInt(id));
        return user.getPassWord().equals(passWord);
    }

    @Override
    public User getUserById(String id) {
        return userRepository.getUserById(Integer.parseInt(id));
    }
}
