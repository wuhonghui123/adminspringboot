package cn.edu.guet.weappdemo.controller;

import cn.edu.guet.weappdemo.bean.SysMenu;
import cn.edu.guet.weappdemo.http.HttpResult;
import cn.edu.guet.weappdemo.service.SysMenuService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.access.prepost.PreAuthorize;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import java.util.Collections;
import java.util.Comparator;
import java.util.List;
import java.util.Set;

/**
 * 菜单控制器
 *
 * @Author Liwei
 * @Date 2021-08-16 09:20
 */
@RestController
@RequestMapping("menu")
public class SysMenuController {

    @Autowired
    private SysMenuService sysMenuService;

    @PreAuthorize("hasAuthority('sys:menu:view')")
    @GetMapping(value = "/findNavTree")
    public HttpResult findNavTree(String userName) {
        System.out.println("查找菜单树：" + userName);
        List<SysMenu> sysMenus = sysMenuService.findTree(userName, 1);
        return HttpResult.ok(sysMenus);
    }
}
