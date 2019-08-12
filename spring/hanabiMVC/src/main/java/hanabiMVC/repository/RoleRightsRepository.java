package hanabiMVC.repository;

import hanabiMVC.entity.Role;
import org.apache.ibatis.annotations.Mapper;
import org.springframework.stereotype.Repository;


import java.util.List;

@Mapper
@Repository
public interface RoleRightsRepository {
    public String getRightsByRoleName(String roleName);
    public List<Role> getAllRole();
}
