package tk.quan9.javaweb.hanabisuki.service;

public interface RightsCheck {
    public boolean deleteCheck(int userId,int commentId);
    public boolean loginCheck(int id,String passWord);
    public boolean userEditCheck(int operateId,int targetId);
}
