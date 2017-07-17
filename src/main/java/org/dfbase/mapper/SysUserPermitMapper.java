package org.dfbase.mapper;

import org.dfbase.entity.SysUserPermit;
import org.dfbase.entity.SysUserPermitKey;

public interface SysUserPermitMapper {
    int deleteByPrimaryKey(SysUserPermitKey key);

    int insert(SysUserPermit record);

    int insertSelective(SysUserPermit record);

    SysUserPermit selectByPrimaryKey(SysUserPermitKey key);

    int updateByPrimaryKeySelective(SysUserPermit record);

    int updateByPrimaryKey(SysUserPermit record);
}