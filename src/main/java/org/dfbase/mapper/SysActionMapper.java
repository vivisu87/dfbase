package org.dfbase.mapper;

import org.dfbase.entity.SysAction;

public interface SysActionMapper {
    int deleteByPrimaryKey(Long id);

    int insert(SysAction record);

    int insertSelective(SysAction record);

    SysAction selectByPrimaryKey(Long id);

    int updateByPrimaryKeySelective(SysAction record);

    int updateByPrimaryKey(SysAction record);
}