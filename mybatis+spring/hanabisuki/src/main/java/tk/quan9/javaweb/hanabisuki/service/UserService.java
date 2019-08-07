package tk.quan9.javaweb.hanabisuki.service;

import tk.quan9.javaweb.hanabisuki.entity.User;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;
import java.util.List;

public interface UserService {
    public User getUserById(int id);
    public List<User> getUserList();
    public List<User> getUserListByGroupId(int groupId);
    public int getCommentCount(int id);
    public void updateUser(HttpServletRequest request, HttpSession session);
}
