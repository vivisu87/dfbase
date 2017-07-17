package org.dfbase.mapper;

import org.dfbase.entity.SysPermission;
import org.dfbase.entity.SysPermissionKey;

public interface SysPermissionMapper {
    int deleteByPrimaryKey(SysPermissionKey key);

    int insert(SysPermission record);

    int insertSelective(SysPermission record);

    SysPermission selectByPrimaryKey(SysPermissionKey key);

    int updateByPrimaryKeySelective(SysPermission record);

    int updateByPrimaryKey(SysPermission record);
}