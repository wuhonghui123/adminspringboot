package cn.edu.guet.weappdemo.bean;


/**
 * @Author Liwei
 * @Date 2021-08-13 17:43
 */
public class SysUserRole extends BaseModel {

    private Long userId;

    private Long roleId;

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

}