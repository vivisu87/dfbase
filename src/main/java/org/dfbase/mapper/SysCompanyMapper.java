package org.dfbase.mapper;

import org.dfbase.entity.SysCompany;

public interface SysCompanyMapper {
    int deleteByPrimaryKey(Long id);

    int insert(SysCompany record);

    int insertSelective(SysCompany record);

    SysCompany selectByPrimaryKey(Long id);

    int updateByPrimaryKeySelective(SysCompany record);

    int updateByPrimaryKey(SysCompany record);
}