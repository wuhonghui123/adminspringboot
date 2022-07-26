package cn.edu.guet.weappdemo.bean;

/**
 * @Author Liwei
 * @Date 2021-08-13 17:40
 */
public class SysRoleMenu extends BaseModel {

    private Long roleId;

    private Long menuId;

	public Long getRoleId() {
		return roleId;
	}

	public void setRoleId(Long roleId) {
		this.roleId = roleId;
	}

	public Long getMenuId() {
		return menuId;
	}

	public void setMenuId(Long menuId) {
		this.menuId = menuId;
	}

}