package cn.edu.guet.weappdemo.bean;

import java.sql.Timestamp;

/**
 * @Author: wuhonghui
 * @Date: 2022/07/26/0:56
 */
public class Commend {
    public String getFood_name() {
        return food_name;
    }

    public void setFood_name(String food_name) {
        this.food_name = food_name;
    }

    public String getNickName() {
        return nickName;
    }

    public void setNickName(String nickName) {
        this.nickName = nickName;
    }

    public String getAvatarUrl() {
        return avatarUrl;
    }

    public void setAvatarUrl(String avatarUrl) {
        this.avatarUrl = avatarUrl;
    }

    @Override
    public String toString() {
        return "Commend{" +
                "nickName='" + nickName + '\'' +
                ", avatarUrl='" + avatarUrl + '\'' +
                ", food_name='" + food_name + '\'' +
                ", commend_id='" + commend_id + '\'' +
                ", order_id='" + order_id + '\'' +
                ", user_id='" + user_id + '\'' +
                ", stars='" + stars + '\'' +
                ", comments='" + comments + '\'' +
                ", comments_time=" + comments_time +
                ", storeReply='" + storeReply + '\'' +
                ", storeReply_time=" + storeReply_time +
                '}';
    }

    private String nickName;
    private String avatarUrl;
    private String food_name;
    private String commend_id;
    private String order_id;
    private String user_id;
    private String stars;
    private String comments;//用户评论
    private java.sql.Timestamp comments_time;
    private String storeReply;//店家回复评论
    private java.sql.Timestamp storeReply_time;

    public String getOrder_id() {
        return order_id;
    }

    public void setOrder_id(String order_id) {
        this.order_id = order_id;
    }



    public String getCommend_id() {
        return commend_id;
    }

    public void setCommend_id(String commend_id) {
        this.commend_id = commend_id;
    }

    public String getUser_id() {
        return user_id;
    }

    public void setUser_id(String user_id) {
        this.user_id = user_id;
    }

    public String getStars() {
        return stars;
    }

    public void setStars(String stars) {
        this.stars = stars;
    }

    public String getComments() {
        return comments;
    }

    public void setComments(String comments) {
        this.comments = comments;
    }

    public Timestamp getComments_time() {
        return comments_time;
    }

    public void setComments_time(Timestamp comments_time) {
        this.comments_time = comments_time;
    }

    public String getStoreReply() {
        return storeReply;
    }

    public void setStoreReply(String storeReply) {
        this.storeReply = storeReply;
    }

    public Timestamp getStoreReply_time() {
        return storeReply_time;
    }

    public void setStoreReply_time(Timestamp storeReply_time) {
        this.storeReply_time = storeReply_time;
    }
}
