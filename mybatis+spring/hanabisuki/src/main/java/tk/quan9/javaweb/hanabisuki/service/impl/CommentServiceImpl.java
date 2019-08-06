package tk.quan9.javaweb.hanabisuki.service.impl;

import org.apache.commons.lang3.StringEscapeUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import tk.quan9.javaweb.hanabisuki.entity.Comment;
import tk.quan9.javaweb.hanabisuki.entity.User;
import tk.quan9.javaweb.hanabisuki.repository.CommentRepository;
import tk.quan9.javaweb.hanabisuki.service.CommentService;
import tk.quan9.javaweb.hanabisuki.service.RightsCheck;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;
import java.util.Date;
import java.util.List;

@Service
public class CommentServiceImpl implements CommentService {
    @Autowired
    private CommentRepository commentRepository;
    @Autowired
    private RightsCheck rightsCheck;

    private String codeTrans(String a){
        try {
            String b=new String(a.getBytes("ISO8859-1"),"UTF-8");
            return b;
        }catch (Exception e){
            e.printStackTrace();
        }
        return a;
    }

    @Override
    public int getCommentCounts() {
        return commentRepository.getCommentCounts();
    }

    @Override
    public List<Comment> getCommentListWithPages(int pagesIndex) {
        int offset=pagesIndex*10;
        return commentRepository.getCommentListWithPages(offset);
    }

    @Override
    public Comment getCommentById(int id) {
        return commentRepository.getCommentById(id);
    }

    @Override
    public void updateComment(HttpServletRequest request, HttpSession session) {
        Comment comment=(Comment)session.getAttribute("commentToEdit");
        comment.setTitle(StringEscapeUtils.escapeHtml4(request.getParameter("title")));
        comment.setDetail(StringEscapeUtils.escapeHtml4(request.getParameter("detail")));
        comment.setEditTime(new Date());
        commentRepository.updateComment(comment);
    }

    @Override
    public void insertComment(HttpServletRequest request,HttpSession session) {
        Comment comment=new Comment();
        User user=(User) session.getAttribute("LoginUser");
        comment.setTitle(StringEscapeUtils.escapeHtml4(request.getParameter("title")));
        comment.setDetail(StringEscapeUtils.escapeHtml4(request.getParameter("detail")));
        comment.setCreateTime(new Date());
        comment.setEditTime(new Date());
        comment.setCommentUserId(user.getId());
        commentRepository.insertComment(comment);
    }

    @Override
    public void deleteComment(int id) {
        commentRepository.deleteComment(id);
    }

    @Override
    public List<Comment> getCommentListByUserId(int id) {
        return commentRepository.getCommentListByUserId(id);
    }
}
