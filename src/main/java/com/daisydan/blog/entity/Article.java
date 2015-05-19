package com.daisydan.blog.entity;

import com.daisydan.blog.enums.ArticleType;
import lombok.Data;
import org.hibernate.annotations.GenericGenerator;

import javax.persistence.*;
import java.util.Date;

@Data
@Entity
@Table(name = "article")
public class Article {

    @Id
    @GeneratedValue(generator = "system-uuid")
    @GenericGenerator(name = "system-uuid", strategy = "uuid")
    @Column(length = 32)
    private String id;

    @Column(length = 50)
    private String title;

    @Column(length = 1000)
    private String content;

    private Date createTime;

    @Column(columnDefinition = "boolean default false", nullable = false)
    private boolean top;

    private ArticleType type;

    //发布人
    private String userId;
}
