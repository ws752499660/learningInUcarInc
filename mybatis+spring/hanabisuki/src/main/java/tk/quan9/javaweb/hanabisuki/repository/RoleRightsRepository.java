package tk.quan9.javaweb.hanabisuki.repository;

import org.apache.ibatis.annotations.Mapper;
import org.springframework.stereotype.Repository;
import tk.quan9.javaweb.hanabisuki.entity.Role;

import java.util.List;

@Mapper
@Repository
public interface RoleRightsRepository {
    public String getRightsByRoleName(String roleName);
    public List<Role> getAllRole();
}
