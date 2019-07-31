package dao;

import entity.Comment;

import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.sql.Timestamp;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Date;
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
            rs.next();
            commentInput(comment,rs);
        }catch (SQLException e){
            e.printStackTrace();
        }
        return comment;
    }

    public boolean insertComment(Comment comment){
        String insertComment=
                "insert INTO comment " +
                        "(title, detail, createTime, editTime, commentUserId) " +
                        "value "+
                        "('"+comment.getTitle()+"','"
                        +comment.getDetail()+"','"
                        +timeTrans(comment.getCreateTime())+"','"
                        +timeTrans(comment.getEditTime())+"',"
                        +Integer.parseInt(comment.getUserId())+")";
        System.out.println(insertComment);
        try {
            if(st.execute(insertComment))
                return true;
        }catch (SQLException e){
            e.printStackTrace();
        }
        return false;
    }

    public boolean updateComment(Comment comment){
        String updateComment=
                "UPDATE comment SET title='"+comment.getTitle()+
                "', detail='"+comment.getDetail()+
                "',editTime='"+timeTrans(comment.getEditTime())+
                "' WHERE id="+Integer.parseInt(comment.getId());
        System.out.println(updateComment);
        try {
            if(st.execute(updateComment))
                return true;
        }catch (SQLException e){
            e.printStackTrace();
        }
        return false;
    }

    private String timeTrans(Date date){
        SimpleDateFormat sdf= new SimpleDateFormat("yyyy-MM-dd kk:mm:ss");
        String dateString= sdf.format(date);
        System.out.println(dateString);
        return dateString;
    }
}
