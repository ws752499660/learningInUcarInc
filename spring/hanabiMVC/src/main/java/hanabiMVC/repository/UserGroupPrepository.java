package hanabiMVC.repository;

import hanabiMVC.entity.UserGroup;
import org.apache.ibatis.annotations.Mapper;
import org.springframework.stereotype.Repository;

import java.util.List;

@Mapper
@Repository
public interface UserGroupPrepository {
    public String getGroupNameById(int groupId);
    public List<UserGroup> getAllUserGroup();
}
