package cn.edu.guet.weappdemo.bean;

import java.sql.Timestamp;

/**
 * @Author: wuhonghui
 * @Date: 2022/07/26/0:56
 */
public class Commend {
    private String commend_id;
    private String id;
    private String name;
    private String food_id;
    private String user_id;
    private String stars;
    private String comments;//用户评论
    private Timestamp comments_time;
    private String storeReply;//店家回复评论
    private Timestamp storeReply_time;

    public String getCommend_id() {
        return commend_id;
    }

    public void setCommend_id(String commend_id) {
        this.commend_id = commend_id;
    }
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

    public String getFood_id() {
        return food_id;
    }

    public void setFood_id(String food_id) {
        this.food_id = food_id;
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
