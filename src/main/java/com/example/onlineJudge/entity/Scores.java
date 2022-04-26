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
public class Scores extends Model<Scores> {

    private static final long serialVersionUID = 1L;

    @TableId(value = "id", type = IdType.AUTO)
    private Integer id;

    private Integer uid;

    private Integer cid;

    private Double usual_score;

    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }
    public Integer getUid() {
        return uid;
    }

    public void setUid(Integer uid) {
        this.uid = uid;
    }
    public Integer getCid() {
        return cid;
    }

    public void setCid(Integer cid) {
        this.cid = cid;
    }
    public Double getUsual_score() {
        return usual_score;
    }

    public void setUsual_score(Double usual_score) {
        this.usual_score = usual_score;
    }

    @Override
    protected Serializable pkVal() {
        return this.id;
    }

    @Override
    public String toString() {
        return "Scores{" +
            "id=" + id +
            ", uid=" + uid +
            ", cid=" + cid +
            ", usual_score=" + usual_score +
        "}";
    }
}
