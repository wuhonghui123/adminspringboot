package cn.edu.guet.weappdemo.mapper;

import cn.edu.guet.weappdemo.bean.SysLog;
import org.apache.ibatis.annotations.Mapper;

/**
 * @Author: wuhonghui
 * @Date: 2022/08/14/1:31
 */
@Mapper
public interface SyslogMapper {
    void save(SysLog sysLog);
}
