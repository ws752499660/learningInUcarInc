package dao;

import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;

public class LoginRepo {
    private String id;
    private String passWord;

    public LoginRepo(String id,String passWord){
        this.id=id;
        this.passWord=passWord;
    }

    public boolean LoginCheck() {
        try {
            Statement st = DbUnit.conn.createStatement();
            String getPwById = "SELECT passWord FROM user WHERE id="+Integer.parseInt(id);
            ResultSet rs = st.executeQuery(getPwById);
            rs.next();
            String passWordGet =rs.getString(1);
            return passWord.equals(passWordGet);
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return false;
    }
}
