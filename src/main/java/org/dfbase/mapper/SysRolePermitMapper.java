package org.dfbase.mapper;

import org.dfbase.entity.SysRolePermit;
import org.dfbase.entity.SysRolePermitKey;

public interface SysRolePermitMapper {
    int deleteByPrimaryKey(SysRolePermitKey key);

    int insert(SysRolePermit record);

    int insertSelective(SysRolePermit record);

    SysRolePermit selectByPrimaryKey(SysRolePermitKey key);

    int updateByPrimaryKeySelective(SysRolePermit record);

    int updateByPrimaryKey(SysRolePermit record);
}