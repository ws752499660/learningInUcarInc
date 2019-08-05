package tk.quan9.javaweb.hanabisuki.service.impl;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import tk.quan9.javaweb.hanabisuki.entity.Comment;
import tk.quan9.javaweb.hanabisuki.entity.User;
import tk.quan9.javaweb.hanabisuki.repository.CommentRepository;
import tk.quan9.javaweb.hanabisuki.repository.UserRepository;
import tk.quan9.javaweb.hanabisuki.service.RightsCheck;

@Service
public class RightsCheckImpl implements RightsCheck {
    @Autowired
    private CommentRepository commentRepository;
    @Autowired
    private UserRepository userRepository;

    @Override
    public boolean deleteCheck(int userId, int commentId) {
        Comment comment=commentRepository.getCommentById(commentId);
        return comment.getCommentUserId()==userId;
    }

    @Override
    public boolean loginCheck(int id,String passWord){
        User user=userRepository.getUserById(id);
        String key=Security.MD5(id+passWord);
        System.out.println(key);
        return user.getPassWord().equals(key);
    }

    @Override
    public boolean userEditCheck(int operateId, int targetId) {
        return operateId==targetId;
    }
}
