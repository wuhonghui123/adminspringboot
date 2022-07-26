package cn.edu.guet.weappdemo.bean;

import java.util.List;

/**
 * @Author: wuhonghui
 * @Date: 2022/07/24/23:49
 */
public class Combo {
    private String id;
    private String name;
    private double price;
    private int sale;
    private int likeNum;
    private List<Integer> classificationIds;
    private int publishStatus;
    private List<ComboFood> comboDish;
    private List<String> tags;
    private List<String> imgs;
}
