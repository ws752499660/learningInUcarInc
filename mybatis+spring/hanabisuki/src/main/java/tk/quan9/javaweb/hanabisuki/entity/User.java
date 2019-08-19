package tk.quan9.javaweb.hanabisuki.entity;

public class User {
    private int id;
    private String userName;
    private String passWord;
    private String email;
    private String phoneNum;
    private int commentCounts;
    private int groupId;
    private String type;
    private int pictureId;
    private String pictureName;

    public User(){
        super();
    }

    public User(int id, String userName, String passWord, String email, String phoneNum, int commentCounts, int groupId, String type,int pictureId) {
        this.id = id;
        this.userName = userName;
        this.passWord = passWord;
        this.email = email;
        this.phoneNum = phoneNum;
        this.commentCounts = commentCounts;
        this.groupId = groupId;
        this.type = type;
        this.commentCounts = 0;
        this.pictureId=pictureId;
    }

    public int getCommentCounts() {
        return commentCounts;
    }

    public void setCommentCounts(int commentCounts) {
        this.commentCounts = commentCounts;
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getUserName() {
        return userName;
    }

    public void setUserName(String userName) {
        this.userName = userName;
    }

    public String getPassWord() {
        return passWord;
    }

    public void setPassWord(String passWord) {
        this.passWord = passWord;
    }

    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    public String getPhoneNum() {
        return phoneNum;
    }

    public void setPhoneNum(String phoneNum) {
        this.phoneNum = phoneNum;
    }

    public String getType() {
        return type;
    }

    public void setType(String type) {
        this.type = type;
    }

    public int getGroupId() {
        return groupId;
    }

    public void setGroupId(int groupId) {
        this.groupId = groupId;
    }

    public int getPictureId() {
        return pictureId;
    }

    public void setPictureId(int pictureId) {
        this.pictureId = pictureId;
    }

    public String getPictureName() {
        return pictureName;
    }

    public void setPictureName(String pictureName) {
        this.pictureName = pictureName;
    }
}
