package com.northsea.peoplemanagement.service.impl;

import com.baomidou.mybatisplus.core.metadata.IPage;
import com.baomidou.mybatisplus.extension.service.impl.ServiceImpl;
import com.northsea.peoplemanagement.domain.Attendance;
import com.northsea.peoplemanagement.mapper.AttendanceMapper;
import com.northsea.peoplemanagement.service.AttendanceService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

/**
 * @Author BenSitu
 * @CreateDate 2022/9/14
 * @Description
 */
@Service
public class AttendanceServiceImpl extends ServiceImpl<AttendanceMapper, Attendance> implements AttendanceService {
    @Autowired
    private AttendanceMapper attendanceMapper;

    @Override
    public boolean insertAttendance(Attendance attendance) {
        return attendanceMapper.insert(attendance) > 0;
    }

    @Override
    public boolean modifyAttendance(Attendance attendance) {
        return attendanceMapper.updateById(attendance) > 0;
    }

    @Override
    public boolean deleteAttendance(String record_id) {
        return attendanceMapper.deleteById(record_id) > 0;
    }

    @Override
    public IPage<Attendance> getPage(int currentPage, int pageSize) {
        return null;
    }

    @Override
    public IPage<Attendance> getPage(int currentPage, int pageSize, Attendance attendance) {
        return null;
    }
}
