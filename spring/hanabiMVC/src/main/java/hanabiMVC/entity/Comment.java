package hanabiMVC.entity;

import java.util.Date;

public class Comment {
    private int id;
    private String title;
    private String detail;
    private Date createTime;
    private Date editTime;
    private int commentUserId;

    public Comment(){
        super();
    }

    public Comment(int id, String title, String detail, Date createTime, Date editTime, int commentUserId) {
        this.id = id;
        this.title = title;
        this.detail = detail;
        this.createTime = createTime;
        this.editTime = editTime;
        this.commentUserId = commentUserId;
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getTitle() {
        return title;
    }

    public void setTitle(String title) {
        this.title = title;
    }

    public String getDetail() {
        return detail;
    }

    public void setDetail(String detail) {
        this.detail = detail;
    }

    public Date getCreateTime() {
        return createTime;
    }

    public void setCreateTime(Date createTime) {
        this.createTime = createTime;
    }

    public Date getEditTime() {
        return editTime;
    }

    public void setEditTime(Date editTime) {
        this.editTime = editTime;
    }

    public int getCommentUserId() {
        return commentUserId;
    }

    public void setCommentUserId(int commentUserId) {
        this.commentUserId = commentUserId;
    }
}
