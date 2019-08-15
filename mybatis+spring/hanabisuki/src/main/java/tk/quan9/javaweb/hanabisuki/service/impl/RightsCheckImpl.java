package tk.quan9.javaweb.hanabisuki.service.impl;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import tk.quan9.javaweb.hanabisuki.entity.Role;
import tk.quan9.javaweb.hanabisuki.entity.User;
import tk.quan9.javaweb.hanabisuki.repository.RoleRightsRepository;
import tk.quan9.javaweb.hanabisuki.repository.UserRepository;
import tk.quan9.javaweb.hanabisuki.service.RightsCheck;

import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;

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

    @Override
    public List<Role> getAllRoles() {
        return roleRightsRepository.getAllRole();
    }
}
