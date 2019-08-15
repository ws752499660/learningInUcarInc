package tk.quan9.javaweb.hanabisuki.service;

import tk.quan9.javaweb.hanabisuki.entity.Role;

import java.util.ArrayList;
import java.util.List;

public interface RightsCheck {
    public boolean loginCheck(int id, String passWord);

    public ArrayList getRightsByRoleName(String roleName);
    public List<Role> getAllRoles();
}
