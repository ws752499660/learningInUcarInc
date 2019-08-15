package tk.quan9.javaweb.hanabisuki.service;

import tk.quan9.javaweb.hanabisuki.entity.Role;
import tk.quan9.javaweb.hanabisuki.entity.UserGroup;

import java.util.List;

public interface UserGroupService {
    public String getGroupNameById(int groupId);

    public List<UserGroup> getAllUserGroup();
}
