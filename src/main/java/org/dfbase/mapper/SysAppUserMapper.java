package org.dfbase.mapper;

import org.dfbase.entity.SysAppUser;
import org.dfbase.entity.SysAppUserKey;

public interface SysAppUserMapper {
    int deleteByPrimaryKey(SysAppUserKey key);

    int insert(SysAppUser record);

    int insertSelective(SysAppUser record);

    SysAppUser selectByPrimaryKey(SysAppUserKey key);

    int updateByPrimaryKeySelective(SysAppUser record);

    int updateByPrimaryKey(SysAppUser record);
}