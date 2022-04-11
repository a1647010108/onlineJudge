package com.example.onlineJudge.util;

import com.example.onlineJudge.entity.*;
import com.example.onlineJudge.mapper.QuestionsMapper;
import com.example.onlineJudge.mapper.Test_dataMapper;
import com.example.onlineJudge.mapper.TestsMapper;
import com.example.onlineJudge.mapper.UsersMapper;
import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;

public class DataAccessObject {

    private SqlSessionFactory sqlSessionFactory;

    public DataAccessObject(SqlSessionFactory sqlSessionFactory) {
        this.sqlSessionFactory = sqlSessionFactory;
    }

    public Users selectUser(Users user) {
        try (SqlSession sqlSession = sqlSessionFactory.openSession()) {
            UsersMapper mapper = sqlSession.getMapper(UsersMapper.class);
            return mapper.selectUser(user);
            //return sqlSession.selectOne("per.piers.onlineJudge.mapper.selectUserByEmail",  email);
        }
    }

    public int insertUser(Users user) {
        try (SqlSession sqlSession = sqlSessionFactory.openSession()) {
            UsersMapper mapper = sqlSession.getMapper(UsersMapper.class);
            int line = mapper.insertUser(user);
            if (line != 1) sqlSession.rollback();
            sqlSession.commit();
            return line;
        }
    }

    public int updateUser(Users user) {
        try (SqlSession sqlSession = sqlSessionFactory.openSession()) {
            UsersMapper mapper = sqlSession.getMapper(UsersMapper.class);
            int line = mapper.updateUser(user);
            sqlSession.commit();
            if (line != 1) sqlSession.rollback();
            return line;
        }
    }

    public Questions[] selectQuestion(Questions question) {
        try (SqlSession sqlSession = sqlSessionFactory.openSession()) {
            QuestionsMapper mapper = sqlSession.getMapper(QuestionsMapper.class);
            return mapper.selectQuestion(question);
        }
    }

    public Test_data[] selectTestData(Test_data testData) {
        try (SqlSession sqlSession = sqlSessionFactory.openSession()) {
            Test_dataMapper mapper = sqlSession.getMapper(Test_dataMapper.class);
            return mapper.selectTestData(testData);
        }
    }

    public int insertTestInfo(Tests testInfo) {
        try (SqlSession sqlSession = sqlSessionFactory.openSession()) {
            TestsMapper mapper = sqlSession.getMapper(TestsMapper.class);
            int line = mapper.insertTestInfo(testInfo);
            sqlSession.commit();
            if (line != 1) sqlSession.rollback();
            return line;
        }
    }

}