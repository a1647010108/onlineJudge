package com.example.onlineJudge.entity;

import com.baomidou.mybatisplus.annotation.IdType;
import com.baomidou.mybatisplus.extension.activerecord.Model;
import com.baomidou.mybatisplus.annotation.TableId;
import lombok.Data;
import org.springframework.stereotype.Repository;

import java.io.Serializable;
import java.util.ArrayList;

/**
 * <p>
 * 
 * </p>
 *
 * @author BlackBox
 * @since 2022-04-02
 */
@Data
public class Test_data extends Model<Test_data> {

    private static final long serialVersionUID = 1L;

    @TableId(value = "id", type = IdType.AUTO)
    private Integer id;

    private Integer question_id;

    private String input;

    private String output;

    private String description;

    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }
    public Integer getQuestion_id() {
        return question_id;
    }

    public void setQuestion_id(Integer question_id) {
        this.question_id = question_id;
    }
    public String getInput() {
        return input;
    }

    public void setInput(String input) {
        this.input = input;
    }
    public String getOutput() {
        return output;
    }

    public void setOutput(String output) {
        this.output = output;
    }
    public String getDescription() {
        return description;
    }

    public void setDescription(String description) {
        this.description = description;
    }

    @Override
    protected Serializable pkVal() {
        return this.id;
    }

    @Override
    public String toString() {
        return "Test_data{" +
            "id=" + id +
            ", question_id=" + question_id +
            ", input=" + input +
            ", output=" + output +
            ", description=" + description +
        "}";
    }

    public ArrayList<InputOutput> getInputOutputs() {
        return null;
    }
}
