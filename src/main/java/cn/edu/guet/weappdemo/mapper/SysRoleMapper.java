package cn.edu.guet.weappdemo.mapper;

import java.util.List;

import cn.edu.guet.weappdemo.bean.SysRole;
import org.apache.ibatis.annotations.Mapper;

/**
 * @Author Liwei
 * @Date 2021-08-13 17:50
 */
@Mapper
public interface SysRoleMapper {
    SysRole selectByPrimaryKey(Long id);
    List<SysRole> findAll();
}