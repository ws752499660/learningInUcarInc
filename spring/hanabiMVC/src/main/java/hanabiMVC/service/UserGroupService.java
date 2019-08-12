package hanabiMVC.service;

import hanabiMVC.entity.UserGroup;

import java.util.List;

public interface UserGroupService {
    public String getGroupNameById(int groupId);

    public List<UserGroup> getAllUserGroup();
}
