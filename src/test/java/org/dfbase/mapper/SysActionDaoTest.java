package org.dfbase.mapper;

import com.fasterxml.jackson.databind.ObjectMapper;
import org.dfbase.entity.SysAction;
import org.dfbase.mapper.extend.SysActionDao;
import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;

import java.util.Date;

@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration({"classpath:spring/spring-dao.xml"})
public class SysActionDaoTest {

    @Autowired
    private SysActionDao sysActionDao;

    @Test
    public void testDeleteByPrimaryKey() throws Exception {
        long id = 1000;
        int i = sysActionDao.deleteByPrimaryKey(id);
        System.out.println("delete line : " +i);
    }

    @Test
    public void testInsert() throws Exception {
        SysAction action = new SysAction();
        action.setActionCode("test");
        action.setActionName("test");
        action.setActionUrl("#");
        action.setActionValue("test1111");
        action.setAppId(1l);
        action.setCreateBy(1l);
        action.setDelFlag(0);
        action.setModId(1l);
        action.setRemarks("remarks test test");
        action.setUpdateBy(1l);
        action.setUpdateDate(new Date());
        int insertCount = sysActionDao.insert(action);
        System.out.println("insertCount = " + insertCount );

        System.out.println("id = " + action.getId());
    }

    @Test
    public void testInsertSelective() throws Exception {
        SysAction action = new SysAction();
        action.setActionCode("test111");
        action.setActionName("test2222");
        action.setActionUrl("#");
        action.setActionValue("test1111");
        action.setAppId(1l);
        action.setCreateBy(1l);
        action.setDelFlag(1);
        action.setModId(2l);
        action.setRemarks("remarks test test");
        action.setUpdateBy(1l);
        action.setUpdateDate(new Date());
        int insertCount = sysActionDao.insert(action);
        System.out.println("insertCount = " + insertCount );

        System.out.println("id = " + action.getId());
    }

    @Test
    public void testSelectByPrimaryKey() throws Exception {
        long id = 1;
        SysAction a = sysActionDao.selectByPrimaryKey(id);
        ObjectMapper objectMapper = new ObjectMapper();
        System.out.println(objectMapper.writeValueAsBytes(a));
    }

    @Test
    public void testUpdateByPrimaryKeySelective() throws Exception {
        
    }

    @Test
    public void testUpdateByPrimaryKey() throws Exception {

    }
}