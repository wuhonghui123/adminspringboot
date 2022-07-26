package cn.edu.guet.weappdemo.controller;

import cn.edu.guet.weappdemo.http.HttpResult;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;

/**
 * @Author: wuhonghui
 * @Date: 2022/07/25/19:01
 */
public class OrderController {
    @GetMapping("/order/list")//获取订单列表
    private HttpResult getOrderList(){
        return HttpResult.ok();
    }
    @PostMapping("/order/delete")//删除订单
    public HttpResult deleteOrder(){
        return HttpResult.ok();
    }

    @PostMapping("/order/update_type")//更新订单状态，若如支付状态、下单中、配送中、确认送达
    public HttpResult updateOrderType(){
        return HttpResult.ok();
    }
    @PostMapping("/order/addorder")//生成订单
    public HttpResult addOrder(){
        return HttpResult.ok();
    }
}
