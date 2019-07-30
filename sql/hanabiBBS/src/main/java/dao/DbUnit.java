package dao;

import java.sql.*;

public class DbUnit {
    private static final String url="jdbc:mysql://localhost:3306/intership?useUnicode=true&characterEncoding=utf8&serverTimezone=GMT%2B8";
    private static final String userName="root";
    private static final String passWord="root";
    public static  Connection conn;
    static {
        try {
            Class.forName("com.mysql.jdbc.Driver");
            conn= DriverManager.getConnection(url,userName,passWord);
        }catch (ClassNotFoundException e) {
            e.printStackTrace();
        }catch (SQLException e){
            e.printStackTrace();
        }
    }

//    public void test(){
//        try {
//            Statement st = conn.createStatement();
//            String sql="SELECT * FROM user";
//            ResultSet rs=st.executeQuery(sql);
//            while (rs.next()){
//                System.out.println("id=" + rs.getObject("id"));
//                System.out.println("userName=" + rs.getObject("userName"));
//                System.out.println("passWord=" + rs.getObject("passWord"));
//                System.out.println("email=" + rs.getObject("email"));
//                System.out.println("phoneNum=" + rs.getObject("phoneNum"));
//            }
//        }catch (SQLException e){
//            e.printStackTrace();
//        }
//    }
}
