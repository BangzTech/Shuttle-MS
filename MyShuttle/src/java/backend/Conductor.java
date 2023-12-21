package backend;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.logging.Level;
import java.util.logging.Logger;

public final class Conductor {
    public static Connection connect() 
            throws SQLException, ClassNotFoundException{
        String URL = "jdbc:mysql://localhost:3306/myshuttle?useSSL=false&serverTimezone=Africa/Lagos";
        String USER = "root";
        String PASS = "Omneywuz12?";
        Class.forName("com.mysql.cj.jdbc.Driver");
        return DriverManager.getConnection(URL, USER, PASS);
    }

    public static void signUp(String name, String phone, String password, String type) throws ClassNotFoundException {
        try(Connection conn = connect()){
            String sql = "INSERT INTO user (phone, name, password, type)"
                        + "VALUES (?,?,?,?)";
            PreparedStatement stmt = conn.prepareStatement(sql);
            stmt.setString(1, phone);
            stmt.setString(2, name);
            stmt.setString(3, password);
            stmt.setString(4, type);
            stmt.execute();
        }catch(SQLException e){
            Logger.getLogger(Conductor.class.getName()).log(Level.SEVERE, null, e);
        }
    }

    public static User signIn(String phone, String psw) throws ClassNotFoundException {
        User user = new User();
        try(Connection conn = connect()){
            String sql = "SELECT * FROM user WHERE phone = ?";
            PreparedStatement stmt = conn.prepareStatement(sql);
            stmt.setString(1, phone);
            ResultSet rs = stmt.executeQuery();
            if(rs.next()){
                if(rs.getString("password").equals(psw)){
                    user.setState("valid");
                    user.setName(rs.getString("name"));
                    user.setType(rs.getString("type"));
                    user.setPhone(phone);
                }else{
                    user.setState("invalid");
                }
            }else{
                user.setState("nil");
            }
        }catch(SQLException e){
            Logger.getLogger(Conductor.class.getName()).log(Level.SEVERE, null, e);
            user.setState("error");
        }
        return user;
    }
}
