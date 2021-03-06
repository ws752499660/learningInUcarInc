package tk.quan9.javaweb.hanabisuki.repository;

import org.apache.ibatis.annotations.Mapper;
import org.springframework.stereotype.Repository;
import tk.quan9.javaweb.hanabisuki.entity.UserGroup;

import java.util.List;

@Mapper
@Repository
public interface UserGroupPrepository {
    public String getGroupNameById(int groupId);
    public List<UserGroup> getAllUserGroup();
}
