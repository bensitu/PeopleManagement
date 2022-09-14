package com.northsea.peoplemanagement.service;

import com.baomidou.mybatisplus.core.metadata.IPage;
import com.baomidou.mybatisplus.extension.service.IService;
import com.northsea.peoplemanagement.domain.Attendance;

/**
 * @Author BenSitu
 * @CreateDate 2022/9/14
 * @Description
 */

public interface AttendanceService extends IService<Attendance> {
    public boolean insertAttendance(Attendance attendance);

    boolean modifyAttendance(Attendance attendance);

    boolean deleteAttendance(String record_id);

    IPage<Attendance> getPage(int currentPage, int pageSize);

    IPage<Attendance> getPage(int currentPage, int pageSize, Attendance attendance);
}
