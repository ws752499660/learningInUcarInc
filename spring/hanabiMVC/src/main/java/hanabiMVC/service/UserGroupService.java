package hanabiMVC.service;

import hanabiMVC.entity.UserGroup;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public interface UserGroupService {
    public String getGroupNameById(int groupId);

    public List<UserGroup> getAllUserGroup();
}
