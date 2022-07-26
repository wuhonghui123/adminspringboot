package cn.edu.guet.weappdemo.service;

import cn.edu.guet.weappdemo.bean.SysUser;
import cn.edu.guet.weappdemo.bean.SysUserRole;

import java.util.List;
import java.util.Set;

/**
 * 用户管理
 *
 * @Author Liwei
 * @Date 2021-08-13 18:03
 */
public interface SysUserService {

    /**
     * 查找用户的菜单权限标识集合
     *
     * @param userName
     * @return
     */
    Set<String> findPermissions(String userName);

    SysUser findByName(String username);

    List<SysUserRole> findUserRoles(Long userId);
}
