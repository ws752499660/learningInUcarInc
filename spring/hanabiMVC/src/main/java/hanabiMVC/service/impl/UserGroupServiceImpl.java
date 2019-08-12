package hanabiMVC.service.impl;

import hanabiMVC.entity.UserGroup;
import hanabiMVC.repository.UserGroupPrepository;
import hanabiMVC.service.UserGroupService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;


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
