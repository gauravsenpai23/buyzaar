package entities;


import javax.persistence.*;

@Entity
public class Product {
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
}
