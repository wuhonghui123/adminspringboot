package cn.edu.guet.weappdemo.controller;


import cn.edu.guet.weappdemo.bean.Classification;
import cn.edu.guet.weappdemo.bean.SysUser;
import cn.edu.guet.weappdemo.http.HttpResult;
import cn.edu.guet.weappdemo.service.SysUserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.*;

@RestController
@RequestMapping("user")
public class SysUserController {


    @Autowired
    private SysUserService sysUserService;


    @GetMapping(value = "/findPermissions")
    public HttpResult findPermissions(@RequestParam String name) {
        System.out.println("查找权限："+name);
        return HttpResult.ok(sysUserService.findPermissions(name));
    }

    //查询用户信息
    @GetMapping(value = "/findAlluser")
    public HttpResult findAllUser() {
        return HttpResult.ok(sysUserService.findAllUser());
    }

    //修改用户信息
    @PostMapping(value = "/updateUser")
//    public HttpResult updateUser(@RequestBody SysUser sysUser){
//        System.out.println(sysUser.getPassword());
//        return HttpResult.ok(sysUserService.updateUser(sysUser));
//    }
    public HttpResult updateUser(String id){
        System.out.println(id);
        return HttpResult.ok(sysUserService.findAllUser());
    }

    //添加用户
    @PostMapping(value = "/insertUser")
    public HttpResult insertUser(@RequestBody SysUser sysUser){
        System.out.println(sysUserService.insertUser(sysUser));
        return HttpResult.ok(sysUserService.findAllUser());
    }

    //根据id删除用户
    @GetMapping("/deleteUser")
    public HttpResult deleteUser(String id){
        System.out.println(id);
        System.out.println(sysUserService.deleteUser(id));
        return HttpResult.ok(sysUserService.findAllUser());
    }
}
