package com.northsea.peoplemanagement.controller;

import com.northsea.peoplemanagement.service.AttendanceService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

/**
 * @Author BenSitu
 * @CreateDate 2022/9/14
 * @Description
 */
@RestController
@RequestMapping("/attendances")
public class AttendanceController {
    @Autowired
    private AttendanceService attendanceService;

    @PostMapping
    public Integer save(){
        return null;
    }
}
