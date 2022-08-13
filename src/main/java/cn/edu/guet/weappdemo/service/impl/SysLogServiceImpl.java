package cn.edu.guet.weappdemo.service.impl;

import cn.edu.guet.weappdemo.bean.SysLog;
import cn.edu.guet.weappdemo.mapper.SyslogMapper;
import cn.edu.guet.weappdemo.service.SysLogService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

/**
 * @Author: wuhonghui
 * @Date: 2022/08/14/1:15
 */
@Service
public class SysLogServiceImpl implements SysLogService {
    @Autowired
    private SyslogMapper syslogMapper;
    @Override
    public void save(SysLog sysLog) {
        syslogMapper.save(sysLog);

    }
}
