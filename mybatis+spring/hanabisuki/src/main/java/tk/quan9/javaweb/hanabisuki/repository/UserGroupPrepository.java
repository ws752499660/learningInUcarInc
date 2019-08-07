package tk.quan9.javaweb.hanabisuki.repository;

import org.apache.ibatis.annotations.Mapper;
import org.springframework.stereotype.Repository;

@Mapper
@Repository
public interface UserGroupPrepository {
    public String getGroupNameById(int groupId);
}
