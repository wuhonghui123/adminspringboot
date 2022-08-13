package cn.edu.guet.weappdemo.service.impl;

import cn.edu.guet.weappdemo.bean.Classification;
import cn.edu.guet.weappdemo.bean.Food;
import cn.edu.guet.weappdemo.mapper.ClassMapper;
import cn.edu.guet.weappdemo.service.ClassService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

/**
 * @Author: wuhonghui
 * @Date: 2022/07/28/20:55
 */
@Service
public class ClassServiceImpl implements ClassService {
    @Autowired
    private ClassMapper classMapper;

    @Override
    public List<Classification> getClassList() {
        return classMapper.getClassList();
    }

    @Override
    public int addClass(Classification classification) {
        return classMapper.addClass(classification);
    }

    @Override
    public int deleFood(String id) {
        return classMapper.deleFood(id);
    }

    @Override
    public int updateFood(Classification classification) {
        return classMapper.updateFood(classification);
    }
}
