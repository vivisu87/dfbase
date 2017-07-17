package org.dfbase.mapper;

import org.dfbase.entity.SysTheme;

public interface SysThemeMapper {
    int deleteByPrimaryKey(Integer tId);

    int insert(SysTheme record);

    int insertSelective(SysTheme record);

    SysTheme selectByPrimaryKey(Integer tId);

    int updateByPrimaryKeySelective(SysTheme record);

    int updateByPrimaryKey(SysTheme record);
}