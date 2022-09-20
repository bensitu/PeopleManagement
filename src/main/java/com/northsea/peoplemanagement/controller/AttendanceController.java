package com.northsea.peoplemanagement.controller;

import com.baomidou.mybatisplus.core.metadata.IPage;
import com.northsea.peoplemanagement.domain.Attendance;
import com.northsea.peoplemanagement.service.AttendanceService;
import com.northsea.peoplemanagement.util.DataResult;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.*;

import java.util.List;

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
    public DataResult save(@RequestBody Attendance attendance){
        return new DataResult(true,attendanceService.save(attendance));
    }

    @GetMapping
    public DataResult getAll(){
        return new DataResult(true, attendanceService.getAll());
    }

    @PutMapping
    public DataResult update(@RequestBody Attendance attendance){
        return new DataResult(true, attendanceService.updateAttendance(attendance));
    }

    @DeleteMapping("/details/{record_id}")
    public DataResult delete(@PathVariable String record_id ){
        return new DataResult(true, attendanceService.deleteAttendance(record_id));
    }

    @GetMapping("/details/{record_id}")
    public DataResult getByRecordId(@PathVariable String record_id){
        return new DataResult(true, attendanceService.getByRecordId(record_id));
    }

    @GetMapping("/{currentPage}/{pageSize}")
    public DataResult getPage(@PathVariable int currentPage, @PathVariable int pageSize){
        return new DataResult(true, attendanceService.getPage(currentPage,pageSize));
    }

    @GetMapping("/{rec_del_flg}")
    public DataResult getAllNotDel(@PathVariable(value = "rec_del_flg") int rec_del_flg) {
        return new DataResult(true, attendanceService.getAllNotDel(rec_del_flg));
    }

}
