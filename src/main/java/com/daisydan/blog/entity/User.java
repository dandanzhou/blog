package com.daisydan.blog.entity;

import lombok.Data;
import com.daisydan.blog.validator.constraints.UserName;
import org.hibernate.annotations.GenericGenerator;

import javax.persistence.*;
import java.util.Date;

@Data
@Entity
@Table(name = "user")
public class User {

    @Id
    @GeneratedValue(generator = "system-uuid")
    @GenericGenerator(name = "system-uuid", strategy = "uuid")
    @Column(length = 32)
    private String id;

    @Column(length = 20)
    @UserName
    private String userName;

    @Column(length = 32)
    private String password;

    private Date createTime;

    //是否为管理员
    @Column(columnDefinition = "boolean default false", nullable = false)
    private boolean admin;


}
