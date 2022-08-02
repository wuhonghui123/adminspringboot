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

    private String id;
    private String name;
    private double price;

    public String getPublish_status() {
        return publish_status;
    }

    public void setPublish_status(String publish_status) {
        this.publish_status = publish_status;
    }

    public String getRecommend_status() {
        return recommend_status;
    }

    public void setRecommend_status(String recommend_status) {
        this.recommend_status = recommend_status;
    }

    public String getNew_status() {
        return new_status;
    }

    public void setNew_status(String new_status) {
        this.new_status = new_status;
    }

    private String publish_status;
    private String recommend_status;
    private String new_status;
    private int sale;
    private int like_num;
    private String food_img;

    @Override
    public String toString() {
        return "Food{" +
                "id='" + id + '\'' +
                ", name='" + name + '\'' +
                ", price=" + price +
                ", publish_status=" + publish_status +
                ", recommend_status=" + recommend_status +
                ", new_status=" + new_status +
                ", sale=" + sale +
                ", like_num=" + like_num +
                ", food_img='" + food_img + '\'' +
                ", make_time='" + make_time + '\'' +
                ", weight='" + weight + '\'' +
                ", desc='" + desc + '\'' +
                ", class_name='" + class_name + '\'' +
                '}';
    }

    private String make_time;
    private String weight;
    private String desc;

    public String getClass_name() {
        return class_name;
    }

    public void setClass_name(String class_name) {
        this.class_name = class_name;
    }

    private String class_name;

}
