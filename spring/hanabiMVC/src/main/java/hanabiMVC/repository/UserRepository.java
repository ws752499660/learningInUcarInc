package hanabiMVC.repository;

import hanabiMVC.entity.User;
import org.apache.ibatis.annotations.Mapper;
import org.springframework.stereotype.Repository;


import java.util.List;

@Mapper
@Repository
public interface UserRepository {
    public User getUserById(int id);

    public List<User> getUserList();

    public int getCommentCount(int userId);

    public void updateUser(User user);

    public List<User> getUserListByGroupId(int groupId);

    public void updateGroup(int userId, int groupId);

    public void updateRole(int userId, String roleName);

}
