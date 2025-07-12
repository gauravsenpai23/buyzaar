package entities;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;
import lombok.ToString;

import javax.persistence.*;

@Data
@NoArgsConstructor
@AllArgsConstructor
@ToString
@Entity
public class User {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Column(length=10,name="user_id")
    private int userId;
    @Column(length=100,name="user_name")
    private String userName;
    @Column(length=100,name="user_email")
    private String userEmail;
    @Column(length=12,name="user_password")
    private String userPassword;
    @Column(length=12,name="user_phone")
    private String userPhone;
    @Column(length=1500,name="user_pic")
    private String userPic;
    @Column(length=1500,name="user_address")
    private String userAddress;

    public User(String userName, String userEmail, String userPassword, String userPhone, String userPic, String userAddress) {
        this.userName = userName;
        this.userEmail = userEmail;
        this.userPassword = userPassword;
        this.userPhone = userPhone;
        this.userPic = userPic;
        this.userAddress = userAddress;
    }
}
