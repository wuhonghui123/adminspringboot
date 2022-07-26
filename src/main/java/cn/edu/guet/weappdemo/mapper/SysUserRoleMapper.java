package cn.edu.guet.weappdemo.mapper;

import java.util.List;

import cn.edu.guet.weappdemo.bean.SysUserRole;
import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Param;

/**
 * @Author Liwei
 * @Date 2021-08-13 17:50
 */
@Mapper
public interface SysUserRoleMapper {
    List<SysUserRole> findUserRoles(@Param(value = "userId") Long userId);
}