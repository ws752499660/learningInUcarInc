package tk.quan9.javaweb.hanabisuki.service.impl;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import tk.quan9.javaweb.hanabisuki.entity.UserGroup;
import tk.quan9.javaweb.hanabisuki.repository.UserGroupPrepository;
import tk.quan9.javaweb.hanabisuki.service.UserGroupService;

import java.util.List;

@Service
public class UserGroupServiceImpl implements UserGroupService {
    @Autowired
    private UserGroupPrepository userGroupPrepository;

    @Override
    public String getGroupNameById(int groupId) {
        return userGroupPrepository.getGroupNameById(groupId);
    }

    @Override
    public List<UserGroup> getAllUserGroup() {
        return userGroupPrepository.getAllUserGroup();
    }
}
