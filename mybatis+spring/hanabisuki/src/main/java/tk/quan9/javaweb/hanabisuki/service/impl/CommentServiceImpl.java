package tk.quan9.javaweb.hanabisuki.service.impl;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import tk.quan9.javaweb.hanabisuki.entity.Comment;
import tk.quan9.javaweb.hanabisuki.entity.User;
import tk.quan9.javaweb.hanabisuki.repository.CommentRepository;
import tk.quan9.javaweb.hanabisuki.service.CommentService;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;
import java.util.Date;
import java.util.List;

@Service
public class CommentServiceImpl implements CommentService {
    @Autowired
    private CommentRepository commentRepository;

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
    public Comment getCommentById(String id) {
        return commentRepository.getCommentById(Integer.parseInt(id));
    }

    @Override
    public void updateComment(HttpServletRequest request, HttpSession session) {
        Comment comment=(Comment)session.getAttribute("commentToEdit");
        comment.setTitle(codeTrans(request.getParameter("title")));
        comment.setDetail(codeTrans(request.getParameter("detail")));
        comment.setEditTime(new Date());
        commentRepository.updateComment(comment);
    }

    @Override
    public void insertComment(HttpServletRequest request,HttpSession session) {
        Comment comment=new Comment();
        User user=(User) session.getAttribute("LoginUser");
        comment.setTitle(codeTrans(request.getParameter("title")));
        comment.setDetail(codeTrans(request.getParameter("detail")));
        comment.setCreateTime(new Date());
        comment.setEditTime(new Date());
        comment.setCommentUserId(user.getId());
        commentRepository.insertComment(comment);
    }
}
