package org.dfbase.mapper;

import org.dfbase.entity.SysPostionUser;

public interface SysPostionUserMapper {
    int deleteByPrimaryKey(Long id);

    int insert(SysPostionUser record);

    int insertSelective(SysPostionUser record);

    SysPostionUser selectByPrimaryKey(Long id);

    int updateByPrimaryKeySelective(SysPostionUser record);

    int updateByPrimaryKey(SysPostionUser record);
}