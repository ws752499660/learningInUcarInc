package hanabiMVC.service;



import hanabiMVC.entity.Role;
import hanabiMVC.entity.User;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;
import java.util.List;

public interface UserService {
    public User getUserById(int id);
    public List<User> getUserList();
    public List<User> getUserListByGroupId(int groupId);
    public int getCommentCount(int id);
    public void updateUser(HttpServletRequest request, HttpSession session);
    public void updateGroup(int userId, int groupId);
    public void updateRole(int userId, String roleName);
    public List<Role> getAllRoles();
}
