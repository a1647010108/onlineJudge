package com.example.onlineJudge.mapper;

import com.example.onlineJudge.entity.Users;
import com.baomidou.mybatisplus.core.mapper.BaseMapper;

/**
 * <p>
 *  Mapper 接口
 * </p>
 *
 * @author BlackBox
 * @since 2022-04-02
 */
public interface UsersMapper extends BaseMapper<Users> {

    Users selectUser(Users user);

    int insertUser(Users user);

    int updateUser(Users user);
}
