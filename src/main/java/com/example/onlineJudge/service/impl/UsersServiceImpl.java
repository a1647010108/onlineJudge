package com.example.onlineJudge.service.impl;

import com.example.onlineJudge.entity.Users;
import com.example.onlineJudge.mapper.UsersMapper;
import com.example.onlineJudge.service.IUsersService;
import com.baomidou.mybatisplus.extension.service.impl.ServiceImpl;
import org.springframework.stereotype.Service;

/**
 * <p>
 *  服务实现类
 * </p>
 *
 * @author BlackBox
 * @since 2022-04-02
 */
@Service
public class UsersServiceImpl extends ServiceImpl<UsersMapper, Users> implements IUsersService {

}
