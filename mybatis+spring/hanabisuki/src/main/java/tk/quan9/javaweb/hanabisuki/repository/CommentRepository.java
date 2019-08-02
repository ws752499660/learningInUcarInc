package tk.quan9.javaweb.hanabisuki.repository;

import org.apache.ibatis.annotations.Mapper;
import org.springframework.stereotype.Repository;
import tk.quan9.javaweb.hanabisuki.entity.Comment;

import java.util.List;

@Repository
@Mapper
public interface CommentRepository {
    public int getCommentCounts();

    public List<Comment> getCommentListWithPages(int offset); //offset=pagesIndex*10

    public void deleteComment(int id);

    public List<Comment> getCommentListByUserId(int userId);

    public Comment getCommentById(int id);

    public void insertComment(Comment comment);

    public void updateComment(Comment comment);
}
