package com.northsea.peoplemanagement.controller;

import com.northsea.peoplemanagement.dto.LoginDTO;
import com.northsea.peoplemanagement.result.Result;
import com.northsea.peoplemanagement.service.LoginService;
import lombok.extern.slf4j.Slf4j;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.CrossOrigin;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RestController;

/**
 * @Author BenSitu
 * @CreateDate 2022/9/15
 * @Description
 */
@Slf4j
@RestController
public class LoginController {
    @Autowired
    LoginService loginService;

    @PostMapping(value = "/login")
    @CrossOrigin
    public Result login(@RequestBody LoginDTO loginDTO){
        return loginService.login(loginDTO);
    }
}
