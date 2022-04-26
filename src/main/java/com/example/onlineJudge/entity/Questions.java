package com.example.onlineJudge.entity;

import com.baomidou.mybatisplus.annotation.IdType;
import com.baomidou.mybatisplus.extension.activerecord.Model;
import com.baomidou.mybatisplus.annotation.TableId;
import java.io.Serializable;

/**
 * <p>
 * 
 * </p>
 *
 * @author BlackBox
 * @since 2022-04-02
 */
public class Questions extends Model<Questions> {

    private static final long serialVersionUID = 1L;

    @TableId(value = "id", type = IdType.AUTO)
    private Integer id;

    private String name;

    private Integer question_number;

    private String description;

    private Integer categories_id;

    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }
    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }
    public Integer getQuestion_number() {
        return question_number;
    }

    public void setQuestion_number(Integer question_number) {
        this.question_number = question_number;
    }
    public String getDescription() {
        return description;
    }

    public void setDescription(String description) {
        this.description = description;
    }
    public Integer getCategories_id() {
        return categories_id;
    }

    public void setCategories_id(Integer categories_id) {
        this.categories_id = categories_id;
    }

    @Override
    protected Serializable pkVal() {
        return this.id;
    }

    @Override
    public String toString() {
        return "Questions{" +
            "id=" + id +
            ", name=" + name +
            ", question_number=" + question_number +
            ", description=" + description +
            ", categories_id=" + categories_id +
        "}";
    }
}
