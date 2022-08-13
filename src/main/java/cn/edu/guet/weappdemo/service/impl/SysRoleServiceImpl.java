package cn.edu.guet.weappdemo.service.impl;

import java.util.List;

import cn.edu.guet.weappdemo.bean.SysRole;
import cn.edu.guet.weappdemo.bean.SysUserRole;
import cn.edu.guet.weappdemo.mapper.SysRoleMapper;
import cn.edu.guet.weappdemo.service.SysRoleService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

/**
 * @Author Liwei
 * @Date 2021-08-13 18:12
 */
@Service
public class SysRoleServiceImpl  implements SysRoleService {

	@Autowired
	private SysRoleMapper sysRoleMapper;

	@Override
	public List<SysRole> findAll() {
		return sysRoleMapper.findAll();
	}



}
