package org.dfbase.mapper;

import org.dfbase.entity.SysDepartment;

public interface SysDepartmentMapper {
    int deleteByPrimaryKey(Long id);

    int insert(SysDepartment record);

    int insertSelective(SysDepartment record);

    SysDepartment selectByPrimaryKey(Long id);

    int updateByPrimaryKeySelective(SysDepartment record);

    int updateByPrimaryKey(SysDepartment record);
}