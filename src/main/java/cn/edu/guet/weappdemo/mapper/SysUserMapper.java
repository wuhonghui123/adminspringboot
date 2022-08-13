package cn.edu.guet.weappdemo.mapper;

import java.util.List;

import cn.edu.guet.weappdemo.bean.SysRole;
import cn.edu.guet.weappdemo.bean.SysUser;
import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Param;
import org.apache.ibatis.annotations.Select;

/**
 * @Author Liwei
 * @Date 2021-08-13 17:50
 */
@Mapper
public interface SysUserMapper {
    SysUser findByName(@Param(value = "name") String name);

    //查询用户信息
//@Select("select u.nick_name,u.email,u.mobile,sr.remark\n" +
//        "from(sys_user u left join sys_user_role sur\n" +
//        "on u.id=sur.user_id)\n" +
//        "left join sys_role sr\n" +
//        "on sr.id=sur.role_id;")
    List<SysUser> findAllUser();

    //修改用户信息
//    int updateUser (SysUser sysUser);
    int updateUser (String id);

    //添加用户信息
    int insertUser(SysUser sysUser);

    //删除用户信息
    int deleteUser(String id);
}