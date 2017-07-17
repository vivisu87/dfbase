package org.dfbase.mapper;

import org.dfbase.entity.SysPosition;

public interface SysPositionMapper {
    int deleteByPrimaryKey(Long id);

    int insert(SysPosition record);

    int insertSelective(SysPosition record);

    SysPosition selectByPrimaryKey(Long id);

    int updateByPrimaryKeySelective(SysPosition record);

    int updateByPrimaryKey(SysPosition record);
}