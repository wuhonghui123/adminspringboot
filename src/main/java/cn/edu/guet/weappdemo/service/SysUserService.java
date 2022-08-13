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

    //查询用户信息
    List<SysUser> findAllUser();

    //修改用户信息
//    int updateUser(SysUser sysUser);
    int  updateUser(String id);

    //添加用户
    int insertUser(SysUser sysUser);


    //删除单个用户
    int deleteUser(String id);
}

//package cn.edu.guet.weappdemo.service;
//
//import cn.edu.guet.weappdemo.bean.SysUser;
//import cn.edu.guet.weappdemo.bean.SysUserRole;
//
//import java.util.List;
//import java.util.Set;
//
///**
// * 用户管理
// *
// * @Author Liwei
// * @Date 2021-08-13 18:03
// */
//public interface SysUserService {
//
//    /**
//     * 查找用户的菜单权限标识集合
//     *
//     * @param userName
//     * @return
//     */
//    Set<String> findPermissions(String userName);
//
//    SysUser findByName(String username);
//
//    List<SysUserRole> findUserRoles(Long userId);
//}

