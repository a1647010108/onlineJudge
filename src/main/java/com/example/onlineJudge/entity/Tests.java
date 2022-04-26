package com.example.onlineJudge.entity;

import com.baomidou.mybatisplus.annotation.IdType;
import com.baomidou.mybatisplus.extension.activerecord.Model;
import com.baomidou.mybatisplus.annotation.TableId;
import java.time.LocalDateTime;
import java.io.Serializable;

/**
 * <p>
 * 
 * </p>
 *
 * @author BlackBox
 * @since 2022-04-02
 */
public class Tests extends Model<Tests> {

    private static final long serialVersionUID = 1L;

    @TableId(value = "id", type = IdType.AUTO)
    private Integer id;

    private Integer user_id;

    private Integer question_id;

    private LocalDateTime submit_time;

    private String code;

    private Double correct_rate;

    private String code_description;

    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }
    public Integer getUser_id() {
        return user_id;
    }

    public void setUser_id(Integer user_id) {
        this.user_id = user_id;
    }
    public Integer getQuestion_id() {
        return question_id;
    }

    public void setQuestion_id(Integer question_id) {
        this.question_id = question_id;
    }
    public LocalDateTime getSubmit_time() {
        return submit_time;
    }

    public void setSubmit_time(LocalDateTime submit_time) {
        this.submit_time = submit_time;
    }
    public String getCode() {
        return code;
    }

    public void setCode(String code) {
        this.code = code;
    }
    public Double getCorrect_rate() {
        return correct_rate;
    }

    public void setCorrect_rate(Double correct_rate) {
        this.correct_rate = correct_rate;
    }
    public String getCode_description() {
        return code_description;
    }

    public void setCode_description(String code_description) {
        this.code_description = code_description;
    }

    @Override
    protected Serializable pkVal() {
        return this.id;
    }

    @Override
    public String toString() {
        return "Tests{" +
            "id=" + id +
            ", user_id=" + user_id +
            ", question_id=" + question_id +
            ", submit_time=" + submit_time +
            ", code=" + code +
            ", correct_rate=" + correct_rate +
            ", code_description=" + code_description +
        "}";
    }
}
