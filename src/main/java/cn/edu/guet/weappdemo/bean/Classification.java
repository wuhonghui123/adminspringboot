package cn.edu.guet.weappdemo.bean;

/**
 * @Author: wuhonghui
 * @Date: 2022/07/24/23:38
 */
public class Classification {
    public String getId() {
        return id;
    }

    public void setId(String id) {
        this.id = id;
    }


    public String getIcon() {
        return icon;
    }

    public void setIcon(String icon) {
        this.icon = icon;
    }



    private String id;

    public String getClass_name() {
        return class_name;
    }

    public void setClass_name(String class_name) {
        this.class_name = class_name;
    }

    private String class_name;
    private String icon;
}
