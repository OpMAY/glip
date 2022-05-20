package com.mapper;

import com.model.*;
import com.model.mybatis.ArrayTestModel;
import org.apache.ibatis.annotations.Param;

import java.util.ArrayList;
import java.util.List;

public interface TestMapper {
    ArrayList<Test> selectTest();

    UserContainer jsonTypeHandleTest(@Param("no") int no);

    void insertJsonTypeHandleTest(UserContainer userTest);

    void insertJsonArrayTypeHandleTest(ArrayTest arrayTest);

    ArrayTest jsonArrayTypeHandleTest(@Param("no") int no);

    void insertTest(Test test);

    void insertTestByNo(Test test);

    List<User> selectUsers();

    void insertUser(User user);

    void arrayTestModelInsertTest(ArrayTestModel arrayTestModel);

    ArrayList<ArrayTestModel> arrayTestModelSelectTest();
}
