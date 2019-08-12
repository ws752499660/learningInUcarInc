package hanabiMVC.service;


import hanabiMVC.entity.Comment;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;
import java.util.List;

public interface CommentService {
    public int getCommentCounts();

    public List<Comment> getCommentListWithPages(int pagesIndex);

    public Comment getCommentById(int id);

    public void updateComment(HttpServletRequest request, HttpSession session);

    public void insertComment(HttpServletRequest request, HttpSession session);

    public void deleteComment(int id);

    public List<Comment> getCommentListByUserId(int id);

    public int getCommentUserGroupById(int id);
}
