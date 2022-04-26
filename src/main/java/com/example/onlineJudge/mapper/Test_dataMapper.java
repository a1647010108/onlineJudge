package com.example.onlineJudge.mapper;

import com.example.onlineJudge.entity.Test_data;
import com.baomidou.mybatisplus.core.mapper.BaseMapper;
import org.springframework.stereotype.Repository;

/**
 * <p>
 *  Mapper 接口
 * </p>
 *
 * @author BlackBox
 * @since 2022-04-02
 */
@Repository
public interface Test_dataMapper extends BaseMapper<Test_data> {

    Test_data[] selectTestData(Test_data testData);
}
