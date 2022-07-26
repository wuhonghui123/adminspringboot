package cn.edu.guet.weappdemo.bean;

/**
 * @Author: wuhonghui
 * @Date: 2022/07/24/23:30
 */
public class Food {
    public String getId() {
        return id;
    }

    public void setId(String id) {
        this.id = id;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public double getPrice() {
        return price;
    }

    public void setPrice(double price) {
        this.price = price;
    }

    public int getPublish_status() {
        return publish_status;
    }

    public void setPublish_status(int publish_status) {
        this.publish_status = publish_status;
    }

    public int getRecommend_status() {
        return recommend_status;
    }

    public void setRecommend_status(int recommend_status) {
        this.recommend_status = recommend_status;
    }

    public int getNew_status() {
        return new_status;
    }

    public void setNew_status(int new_status) {
        this.new_status = new_status;
    }

    public int getSale() {
        return sale;
    }

    public void setSale(int sale) {
        this.sale = sale;
    }

    public int getLike_num() {
        return like_num;
    }

    public void setLike_num(int like_num) {
        this.like_num = like_num;
    }

    public String getFood_img() {
        return food_img;
    }

    public void setFood_img(String food_img) {
        this.food_img = food_img;
    }

    public String getMake_time() {
        return make_time;
    }

    public void setMake_time(String make_time) {
        this.make_time = make_time;
    }

    public String getWeight() {
        return weight;
    }

    public void setWeight(String weight) {
        this.weight = weight;
    }

    public String getDesc() {
        return desc;
    }

    public void setDesc(String desc) {
        this.desc = desc;
    }

    public String getFood_class() {
        return food_class;
    }

    public void setFood_class(String food_class) {
        this.food_class = food_class;
    }

    private String id;
    private String name;
    private double price;
    private int publish_status;
    private int recommend_status;
    private int new_status;
    private int sale;
    private int like_num;
    private String food_img;
    private String make_time;
    private String weight;
    private String desc;
    private String food_class;

}
