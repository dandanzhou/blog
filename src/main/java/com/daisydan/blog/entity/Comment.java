package com.daisydan.blog.entity;

import lombok.Data;
import org.hibernate.annotations.GenericGenerator;

import javax.persistence.*;

@Data
@Entity
@Table(name = "comment")
public class Comment {

    @Id
    @GeneratedValue(generator = "system-uuid")
    @GenericGenerator(name = "system-uuid", strategy = "uuid")
    @Column(length = 32)
    private String id;

    @Column(length = 32)
    private String articleID;

    @Column(length = 20)
    private String person;

    @Column(length = 40)
    private String reTitle;

    @Column(length = 2000)
    private String reContent;
}
