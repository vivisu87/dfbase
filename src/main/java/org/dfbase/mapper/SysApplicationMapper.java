package org.dfbase.mapper;

import org.dfbase.entity.SysApplication;

public interface SysApplicationMapper {
    int deleteByPrimaryKey(Long id);

    int insert(SysApplication record);

    int insertSelective(SysApplication record);

    SysApplication selectByPrimaryKey(Long id);

    int updateByPrimaryKeySelective(SysApplication record);

    int updateByPrimaryKey(SysApplication record);
}