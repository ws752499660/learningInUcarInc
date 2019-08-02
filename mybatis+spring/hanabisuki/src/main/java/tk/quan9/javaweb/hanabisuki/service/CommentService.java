package tk.quan9.javaweb.hanabisuki.service;

import tk.quan9.javaweb.hanabisuki.entity.Comment;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;
import java.util.List;

public interface CommentService {
    public int getCommentCounts();

    public List<Comment> getCommentListWithPages(int pagesIndex);

    public Comment getCommentById(String id);

    public void updateComment(HttpServletRequest request, HttpSession session);

    public void insertComment(HttpServletRequest request,HttpSession session);
}
