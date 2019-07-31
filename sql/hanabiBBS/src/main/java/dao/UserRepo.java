package dao;

import entity.User;
import sun.nio.cs.US_ASCII;

import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

public class UserRepo {
    private Statement st;

    public UserRepo() {
        try {
            st = DbUnit.conn.createStatement();
        }catch (SQLException e){
            e.printStackTrace();
        }
    }
    public boolean LoginCheck(String id, String passWord) {
        String getPwById = "SELECT passWord FROM user WHERE id="+Integer.parseInt(id);
        try {
            ResultSet rs = st.executeQuery(getPwById);
            rs.next();
            String passWordGet =rs.getString(1);
            return passWord.equals(passWordGet);
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return false;
    }

    public List<User> getUserList(){
        String getUserList="SELECT * FROM user";
        List<User> userList=new ArrayList<>();
        try {
            ResultSet rs=st.executeQuery(getUserList);
            while (rs.next()){
                User user=new User();
                userInput(user,rs);
                userList.add(user);
            }
        }catch (SQLException e){
            e.printStackTrace();
        }
        return userList;
    }

    public int getCommentCount(String userId){
        String getComment="SELECT count(*) from comment WHERE commentUserId="+userId;
        int count=0;
        try {
            ResultSet rs=st.executeQuery(getComment);
            rs.next();
            count=rs.getInt(1);
        }catch (SQLException e){
            e.printStackTrace();
        }
        return count;
    }

    public User getUserById(String userId){
        User user=new User();
        String getUserById="SELECT * FROM user WHERE id="+userId;
        try {
            ResultSet rs=st.executeQuery(getUserById);
            rs.next();
            userInput(user,rs);
        }catch (SQLException e){
            e.printStackTrace();
        }
        return user;
    }

    public void updateUser(User user){
        String updateUser="UPDATE user SET " +
                "userName='"+ user.getUserName()
                +"', passWord='"+user.getPassWord()
                +"', phoneNum='"+user.getPhoneNum()
                +"', email='"+user.getEmail()
                +"' WHERE id="+user.getId();
        try {
            st.execute(updateUser);
        }catch (SQLException e){
            e.printStackTrace();
        }
    }

    private void userInput(User user,ResultSet rs){
        try {
            user.setId(String.valueOf(rs.getObject("id")));
            user.setPassWord(rs.getString("passWord"));
            user.setUserName(rs.getString("userName"));
            user.setPhoneNum(rs.getString("phoneNum"));
            user.setEmail(rs.getString("email"));
        }catch (SQLException e){
            e.printStackTrace();
        }
    }
}
