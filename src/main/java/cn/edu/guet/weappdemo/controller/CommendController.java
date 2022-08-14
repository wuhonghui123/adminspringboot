package cn.edu.guet.weappdemo.controller;

import cn.edu.guet.weappdemo.bean.Commend;
import cn.edu.guet.weappdemo.http.HttpResult;
import cn.edu.guet.weappdemo.service.CommendService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RestController;


/**
 * @Author: wuhonghui
 * @Date: 2022/07/26/9:36
 */
//商家追加评论
@RestController
public class CommendController {

    @Autowired
    private CommendService commendService;
    @GetMapping("/commend/list")//获取评论列表
    public HttpResult getCommend(){
        return HttpResult.ok(commendService.getCommend());
    }
    @PostMapping("/commend/add")//添加评论
    public HttpResult addCommend(@RequestBody Commend commend){

        return HttpResult.ok(commendService.addCommend(commend));
    }
    @PostMapping("/commend/update")//更新评论
    public HttpResult updateCommend(@RequestBody Commend commend){

        return HttpResult.ok(commendService.updateCommend(commend));
    }
}
