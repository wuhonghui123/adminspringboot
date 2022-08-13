package cn.edu.guet.weappdemo.bean;


/**
 * @Author Liwei
 * @Date 2021-08-13 17:43
 */
public class SysUserRole extends BaseModel {

    private Long userId;

    private Long roleId;

	public SysUser getSysUser() {
		return sysUser;
	}

	public void setSysUser(SysUser sysUser) {
		this.sysUser = sysUser;
	}

	private SysUser sysUser;

	public SysRole getSysRole() {
		return sysRole;
	}

	public void setSysRole(SysRole sysRole) {
		this.sysRole = sysRole;
	}

	private SysRole sysRole;



	public Long getUserId() {
		return userId;
	}

	public void setUserId(Long userId) {
		this.userId = userId;
	}

	public Long getRoleId() {
		return roleId;
	}

	public void setRoleId(Long roleId) {
		this.roleId = roleId;
	}


//	@Override
//	public Long getId() {
//		return id;
//	}
//
//	@Override
//	public void setId(Long id) {
//		this.id = id;
//	}
//
//	public Long getUser_id() {
//		return user_id;
//	}
//
//	public void setUser_id(Long user_id) {
//		this.user_id = user_id;
//	}
//
//	public Long getRole_id() {
//		return role_id;
//	}
//
//	public void setRole_id(Long role_id) {
//		this.role_id = role_id;
//	}
//
//	private Long id;
//	private Long user_id;
//	private Long role_id;
}