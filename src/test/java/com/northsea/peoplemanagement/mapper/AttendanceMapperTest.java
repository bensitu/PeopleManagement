package com.northsea.peoplemanagement.mapper;

import org.junit.jupiter.api.Test;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.test.context.SpringBootTest;

/**
 * @Author BenSitu
 * @CreateDate 2022/9/14
 * @Description
 */
@SpringBootTest
public class AttendanceMapperTest {
    @Autowired
    private AttendanceMapper attendanceMapper;

    @Test
    void getByIdWithMpTest() {
        System.out.println(attendanceMapper.selectById("100012022091401"));
    }

    @Test
    void getByRecordIdTest(){
        System.out.println(attendanceMapper.getByRecordId("100012022091401"));
    }
}
