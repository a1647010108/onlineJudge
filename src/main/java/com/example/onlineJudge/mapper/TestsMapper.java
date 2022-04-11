package com.example.onlineJudge.mapper;

import com.example.onlineJudge.entity.Tests;
import com.baomidou.mybatisplus.core.mapper.BaseMapper;

/**
 * <p>
 *  Mapper 接口
 * </p>
 *
 * @author BlackBox
 * @since 2022-04-02
 */
public interface TestsMapper extends BaseMapper<Tests> {

    int insertTestInfo(Tests testInfo);
}
