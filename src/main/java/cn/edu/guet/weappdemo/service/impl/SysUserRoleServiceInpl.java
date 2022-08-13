package cn.edu.guet.weappdemo.service.impl;

import cn.edu.guet.weappdemo.bean.SysUserRole;
import cn.edu.guet.weappdemo.mapper.SysUserRoleMapper;
import cn.edu.guet.weappdemo.service.SysUserRoleService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class SysUserRoleServiceInpl implements SysUserRoleService {

    @Autowired
    private SysUserRoleMapper sysUserRoleMapper;

    @Override
    public int insertUserRole(SysUserRole sysUserRole) {
        return sysUserRoleMapper.insertRole(sysUserRole);

    }

    @Override
    public int updateRole(String id) {
        return sysUserRoleMapper.updateRole(id);
    }
}
