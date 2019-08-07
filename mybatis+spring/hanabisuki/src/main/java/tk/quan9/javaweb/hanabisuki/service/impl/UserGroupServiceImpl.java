package tk.quan9.javaweb.hanabisuki.service.impl;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import tk.quan9.javaweb.hanabisuki.repository.UserGroupPrepository;
import tk.quan9.javaweb.hanabisuki.service.UserGroupService;

@Service
public class UserGroupServiceImpl implements UserGroupService {
    @Autowired
    private UserGroupPrepository userGroupPrepository;

    @Override
    public String getGroupNameById(int groupId) {
        return userGroupPrepository.getGroupNameById(groupId);
    }
}
