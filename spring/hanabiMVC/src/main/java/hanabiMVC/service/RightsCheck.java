package hanabiMVC.service;

import java.util.ArrayList;

public interface RightsCheck {
    public boolean loginCheck(int id, String passWord);

    public ArrayList getRightsByRoleName(String roleName);
}
