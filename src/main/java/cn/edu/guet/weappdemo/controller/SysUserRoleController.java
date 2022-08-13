package cn.edu.guet.weappdemo.controller;

import cn.edu.guet.weappdemo.bean.SysUserRole;
import cn.edu.guet.weappdemo.http.HttpResult;
import cn.edu.guet.weappdemo.service.SysUserRoleService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.*;

import java.net.http.HttpClient;

@RestController
@RequestMapping("userrole")
public class SysUserRoleController {

    @Autowired
    private SysUserRoleService sysUserRoleService;

    @PostMapping("insertRole")
    public HttpResult insertRole(@RequestBody SysUserRole sysUserRole){
        return HttpResult.ok(sysUserRoleService.insertUserRole(sysUserRole));
    }

    @GetMapping("/updateRole")
    public HttpResult updateRole(String id){
        return HttpResult.ok(sysUserRoleService.updateRole(id));
    }
}
