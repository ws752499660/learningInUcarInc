package hanabiMVC.service.impl;

import hanabiMVC.entity.User;
import hanabiMVC.repository.RoleRightsRepository;
import hanabiMVC.repository.UserRepository;
import hanabiMVC.service.RightsCheck;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;


import java.util.ArrayList;
import java.util.Arrays;

@Service
public class RightsCheckImpl implements RightsCheck {
    @Autowired
    private RoleRightsRepository roleRightsRepository;
    @Autowired
    private UserRepository userRepository;

    @Override
    public boolean loginCheck(int id,String passWord){
        User user=userRepository.getUserById(id);
        String key=Security.MD5(id+passWord);
        System.out.println(key);
        return user.getPassWord().equals(key);
    }

    @Override
    public ArrayList getRightsByRoleName(String roleName) {
        String rightsGet=roleRightsRepository.getRightsByRoleName(roleName);
        ArrayList<String> rights=new ArrayList<>((Arrays.asList(rightsGet.split(""))));
        String temp;
        for(int i=0;i<4;i++){
            temp=rights.get(i);
            rights.set(i,rights.get(7-i));
            rights.set(7-i,temp);
        }
        return rights;
    }
}
