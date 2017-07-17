package org.dfbase.mapper;

import org.dfbase.entity.SysPermiGroup;

public interface SysPermiGroupMapper {
    int deleteByPrimaryKey(Long id);

    int insert(SysPermiGroup record);

    int insertSelective(SysPermiGroup record);

    SysPermiGroup selectByPrimaryKey(Long id);

    int updateByPrimaryKeySelective(SysPermiGroup record);

    int updateByPrimaryKey(SysPermiGroup record);
}