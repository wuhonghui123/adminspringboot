//package cn.edu.guet.weappdemo.service.impl;
//
//import cn.edu.guet.weappdemo.bean.SysUser;
//import cn.edu.guet.weappdemo.bean.SysUserRole;
//import cn.edu.guet.weappdemo.mapper.SysUserMapper;
//import cn.edu.guet.weappdemo.service.SysUserService;
//import org.springframework.beans.factory.annotation.Autowired;
//
//import java.util.List;
//import java.util.Set;
//
//public class UserService implements SysUserService{
//
//    @Autowired
//    private SysUserService sysUserService;
//
//    @Override
//    public Set<String> findPermissions(String userName) {
//        return null;
//    }
//
//    @Override
//    public SysUser findByName(String username) {
//        return null;
//    }
//
//    @Override
//    public List<SysUserRole> findUserRoles(Long userId) {
//        return null;
//    }
//
//    @Override
//    public  List<SysUser> findAllUser(){
//        return sysUserService.findAllUser();
//    }
//
//    @Override
//    public String updateUser(SysUser sysUser) {
//        return null;
//    }
//
//    @Override
//    public String deleteUser(String id) {
//        return null;
//    }
//}
