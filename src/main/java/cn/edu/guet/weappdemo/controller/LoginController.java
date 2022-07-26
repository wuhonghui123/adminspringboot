package cn.edu.guet.weappdemo.controller;

import cn.edu.guet.weappdemo.bean.LoginBean;
import cn.edu.guet.weappdemo.bean.SysUser;
import cn.edu.guet.weappdemo.http.HttpResult;
import cn.edu.guet.weappdemo.security.JwtAuthenticationToken;
import cn.edu.guet.weappdemo.service.SysUserService;
import cn.edu.guet.weappdemo.util.PasswordUtils;
import cn.edu.guet.weappdemo.util.SecurityUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.access.prepost.PreAuthorize;
import org.springframework.security.authentication.AuthenticationManager;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.*;

import javax.servlet.http.HttpServletRequest;

@RestController
public class LoginController {

    @Autowired
    private AuthenticationManager authenticationManager;

    @Autowired
    private SysUserService sysUserService;

    @PostMapping("login")
//    public HttpResult login(String username, String password, HttpServletRequest request) {
    public HttpResult login(@RequestBody LoginBean loginBean, HttpServletRequest request) {
        String username = loginBean.getUsername();
        String password = loginBean.getPassword();
        System.out.println(username);
        System.out.println(password);
        // 用户信息
        SysUser user = sysUserService.findByName(username);
        // 账号不存在、密码错误
        if (user == null) {
            return HttpResult.error("账号不存在");
        }
        if (!PasswordUtils.matches(user.getSalt(), password, user.getPassword())) {
            return HttpResult.error("密码不正确");
        }
        // 账号锁定
        if (user.getStatus() == 0) {
            return HttpResult.error("账号已被锁定,请联系管理员");
        }
        // 系统登录认证
        JwtAuthenticationToken token = SecurityUtils.login(request, username, password, authenticationManager);

        return HttpResult.ok(token);
    }
}
