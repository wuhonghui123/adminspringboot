package cn.edu.guet.weappdemo.mapper;

import java.util.List;

import cn.edu.guet.weappdemo.bean.SysUser;
import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Param;

/**
 * @Author Liwei
 * @Date 2021-08-13 17:50
 */
@Mapper
public interface SysUserMapper {
    SysUser findByName(@Param(value = "name") String name);
}