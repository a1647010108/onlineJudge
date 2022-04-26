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
public class Advisors extends Model<Advisors> {

    private static final long serialVersionUID = 1L;

    @TableId(value = "id", type = IdType.AUTO)
    private Integer id;

    private Integer uid_user;

    private Integer uid_admin;

    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }
    public Integer getUid_user() {
        return uid_user;
    }

    public void setUid_user(Integer uid_user) {
        this.uid_user = uid_user;
    }
    public Integer getUid_admin() {
        return uid_admin;
    }

    public void setUid_admin(Integer uid_admin) {
        this.uid_admin = uid_admin;
    }

    @Override
    protected Serializable pkVal() {
        return this.id;
    }

    @Override
    public String toString() {
        return "Advisors{" +
            "id=" + id +
            ", uid_user=" + uid_user +
            ", uid_admin=" + uid_admin +
        "}";
    }
}
