package hanabiMVC.service;

import org.springframework.stereotype.Service;

import java.util.ArrayList;

@Service
public interface RightsCheck {
    public boolean loginCheck(int id, String passWord);

    public ArrayList getRightsByRoleName(String roleName);
}
