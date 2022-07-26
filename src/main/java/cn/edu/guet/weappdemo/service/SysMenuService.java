package cn.edu.guet.weappdemo.service;

import cn.edu.guet.weappdemo.bean.SysMenu;

import java.util.List;


/**
 * 菜单管理
 *
 * @Author Liwei
 * @Date 2021-08-14 18:05
 */
public interface SysMenuService {
    /**
     * 根据用户名查找菜单列表
     *
     * @param userName
     * @return
     */
    List<SysMenu> findByUser(String userName);

    /**
     * 查询菜单树,用户ID和用户名为空则查询全部
     *
     * @param menuType 获取菜单类型，0：获取所有菜单，包含按钮，1：获取所有菜单，不包含按钮
     * @param userName
     * @return
     */
    List<SysMenu> findTree(String userName, int menuType);
}
