package tk.quan9.javaweb.hanabisuki.repository;

import org.apache.ibatis.annotations.Mapper;
import org.springframework.stereotype.Repository;
import tk.quan9.javaweb.hanabisuki.entity.User;

import java.util.List;

@Mapper
@Repository
public interface UserRepository {
    public User getUserById(int id);

    public List<User> getUserList();

    public int getCommentCount(String userId);

    public void updateUser(User user);



}
