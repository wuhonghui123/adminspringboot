package cn.edu.guet.weappdemo.service.impl;

import cn.edu.guet.weappdemo.bean.Commend;
import cn.edu.guet.weappdemo.mapper.CommendMapper;
import cn.edu.guet.weappdemo.service.CommendService;
import org.springframework.beans.factory.annotation.Autowired;

import java.util.List;

public class CommendServicelmpl implements CommendService {
    @Autowired
    private CommendMapper commendMapper;
    @Override
    public List<Commend> getCommend() {
        return commendMapper.getCommend();
    }

    @Override
    public int addCommend(Commend commend) {
        return commendMapper.addCommend(commend);
    }

    @Override
    public int deleteCommend(String id) {
        return commendMapper.deleteCommend(id);
    }

    @Override
    public int updateCommend(Commend commend) {
        return commendMapper.updateCommend(commend);
    }
}
