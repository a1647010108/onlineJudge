package com.example.onlineJudge.service.impl;

import com.example.onlineJudge.entity.Questions;
import com.example.onlineJudge.mapper.QuestionsMapper;
import com.example.onlineJudge.service.IQuestionsService;
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
public class QuestionsServiceImpl extends ServiceImpl<QuestionsMapper, Questions> implements IQuestionsService {

}
