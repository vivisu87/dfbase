package org.dfbase.mapper;

import org.dfbase.entity.SysPostionPermit;
import org.dfbase.entity.SysPostionPermitKey;

public interface SysPostionPermitMapper {
    int deleteByPrimaryKey(SysPostionPermitKey key);

    int insert(SysPostionPermit record);

    int insertSelective(SysPostionPermit record);

    SysPostionPermit selectByPrimaryKey(SysPostionPermitKey key);

    int updateByPrimaryKeySelective(SysPostionPermit record);

    int updateByPrimaryKey(SysPostionPermit record);
}