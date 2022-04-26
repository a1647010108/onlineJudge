package com.example.onlineJudge.mapper;

import com.example.onlineJudge.entity.Questions;
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
public interface QuestionsMapper extends BaseMapper<Questions> {

    Questions[] selectQuestion(Questions question);
}
