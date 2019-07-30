package dao;

import entity.Comment;

import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

public class CommentRepo {
    private Statement st;

    private void commentInput(Comment comment,ResultSet rs){
        try {
            comment.setId(String.valueOf(rs.getObject("id")));
            comment.setTitle(rs.getString("title"));
            comment.setDetail(rs.getString("detail"));
            comment.setCreateTime(rs.getTimestamp("createTime"));
            comment.setEditTime(rs.getTimestamp("editTime"));
            comment.setUserId(String.valueOf(rs.getObject("commentUserId")));
        }catch (SQLException e){
            e.printStackTrace();
        }

    }

    public CommentRepo(){
        try {
            st = DbUnit.conn.createStatement();
        }catch (SQLException e){
            e.printStackTrace();
        }
    }

    public List<Comment> getCommentList(){
        List<Comment> commentList=new ArrayList<>();
        try {
            String getAllComments="SELECT * FROM comment";
            ResultSet rs=st.executeQuery(getAllComments);
            while (rs.next()){
                Comment comment=new Comment();
                commentInput(comment,rs);
                commentList.add(comment);
            }
        }catch (SQLException e){
            e.printStackTrace();
        }
        return commentList;
    }

    public boolean deleteComment(String id){
        try{
            String deleteComment="DELETE FROM comment where id="+Integer.parseInt(id);
            if(st.execute(deleteComment)){
                return true;
            }
        }catch (SQLException e){
            e.printStackTrace();
        }
        return false;
    }

    public Comment getCommentById(String id){
        Comment comment=new Comment();
        try{
            String getCommentById="SELECT * FROM comment where id="+Integer.parseInt(id);
            ResultSet rs=st.executeQuery(getCommentById);
            commentInput(comment,rs);
        }catch (SQLException e){
            e.printStackTrace();
        }
        return comment;
    }
}
