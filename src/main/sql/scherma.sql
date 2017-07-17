CREATE DATABASE df_soft;
use df_soft;
/*
DROP TABLE IF EXISTS SYS_ACTION;

DROP TABLE IF EXISTS SYS_APPLICATION;

DROP TABLE IF EXISTS SYS_COMPANY;

DROP TABLE IF EXISTS SYS_DEPARTMENT;

DROP TABLE IF EXISTS SYS_DICTIONARY;

DROP TABLE IF EXISTS SYS_MODULE;

DROP TABLE IF EXISTS SYS_POSITION;

DROP TABLE IF EXISTS SYS_ROLE;

DROP TABLE IF EXISTS SYS_THEME;

DROP TABLE IF EXISTS SYS_USER;

DROP TABLE IF EXISTS SYS_APP_USER;

DROP TABLE IF EXISTS SYS_PERMI_GROUP;

DROP TABLE IF EXISTS SYS_PERMISSION;

DROP TABLE IF EXISTS SYS_POSTION_PERMIT;

DROP TABLE IF EXISTS SYS_POSTION_USER;

DROP TABLE IF EXISTS SYS_ROLE_PERMIT;

DROP TABLE IF EXISTS SYS_USER_PERMIT;
*/
/*==============================================================*/
/* Table: SYS_ACTION                                            */
/*==============================================================*/
CREATE TABLE SYS_ACTION
(
   ID                   BIGINT NOT NULL AUTO_INCREMENT COMMENT '系统自动ID',
   APP_ID               BIGINT COMMENT '系统ID，sys_application.id',
   MOD_ID               BIGINT COMMENT '系统模块ID',
   ACTION_CODE          VARCHAR(10) COMMENT '动作编码',
   ACTION_NAME          VARCHAR(20) COMMENT '动作名称',
   ACTION_VALUE         VARCHAR(20) COMMENT '动作值',
   ACTION_URL           VARCHAR(100) COMMENT '请求路径',
   REMARKS              VARCHAR(100) COMMENT '描述',
   CREATE_DATE          TIMESTAMP DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
   UPDATE_DATE          TIMESTAMP COMMENT '最后修改时间',
   CREATE_BY            BIGINT COMMENT '创建人',
   UPDATE_BY            BIGINT COMMENT '最后修改人',
   DEL_FLAG             INT COMMENT '删除标记（0：正常；1：删除；2：审核）',
   PRIMARY KEY (ID)
)ENGINE=InnoDB AUTO_INCREMENT=1000 DEFAULT CHARSET=utf8 COMMENT '系统中所有操作的动作表，系统模块（页面）的动作';


/*==============================================================*/
/* Table: SYS_APPLICATION                                       */
/*==============================================================*/
CREATE TABLE SYS_APPLICATION
(
   ID                   BIGINT NOT NULL AUTO_INCREMENT COMMENT '系统自增ID',
   APP_CODE             VARCHAR(20) COMMENT '编码',
   APP_NAME             VARCHAR(50) COMMENT '应用名称',
   LOGO                 VARCHAR(200) COMMENT 'logo',
   APP_TITLE            VARCHAR(200) COMMENT '标题',
   APP_KEYWORD          VARCHAR(200) COMMENT '关键字',
   APP_COPYRIGHT        VARCHAR(200) COMMENT '版权信息',
   APP_THEME_ID         BIGINT COMMENT '主题',
   ADMIN_NAME           VARCHAR(20) COMMENT '管理人',
   ADMIN_PHONE_NUM      VARCHAR(20) COMMENT '管理电话',
   ADMIN_MAIL           VARCHAR(100) COMMENT '管理人邮箱',
   REMARKS              VARCHAR(2000) COMMENT '描述',
   CREATE_DATE          TIMESTAMP DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
   UPDATE_DATE          TIMESTAMP COMMENT '最后修改时间',
   CREATE_BY            BIGINT COMMENT '创建人',
   UPDATE_BY            BIGINT COMMENT '最后修改人',
   DEL_FLAG             INT COMMENT '删除标记（0：正常；1：删除；2：审核）',
   PRIMARY KEY (ID)
)ENGINE=InnoDB AUTO_INCREMENT=1000 DEFAULT CHARSET=utf8 COMMENT '系统信息表';


/*==============================================================*/
/* Table: SYS_COMPANY                                           */
/*==============================================================*/
CREATE TABLE SYS_COMPANY
(
   ID                   BIGINT NOT NULL AUTO_INCREMENT COMMENT '系统自动ID',
   FULL_NAME            VARCHAR(100) COMMENT '公司名称',
   ABBR_NAME            VARCHAR(100) COMMENT '公司简称',
   CORPORATE            VARCHAR(50) COMMENT '法人代表',
   BUS_LICENCE          VARCHAR(100) COMMENT '营业执照',
   BUS_IMAGE            VARCHAR(200) COMMENT '营业执照图片',
   TAX_NUMBER           VARCHAR(50) COMMENT '税务证号',
   TRADE                VARCHAR(200) COMMENT '所属行业',
   REGION               VARCHAR(100) COMMENT '国家/地区',
   BUS_SCOPE            VARCHAR(200) COMMENT '经营范围',
   COMPANY_CODE         VARCHAR(100) COMMENT '公司代码',
   REG_ADDRESS          VARCHAR(200) COMMENT '注册地址',
   CONTACT_NAME         VARCHAR(50) COMMENT '联系人姓名',
   CONTACT_MOBILE       VARCHAR(20) COMMENT '联系人手机号',
   CONTACT_PHONE        VARCHAR(20) COMMENT '联系人电话',
   CONTACT_QQ           VARCHAR(20) COMMENT '联系人QQ',
   CONTACT_WECHAT       VARCHAR(50) COMMENT '联系人微信',
   CONTACT_MAIL         VARCHAR(100) COMMENT '联系人邮箱',
   CONTACT_ADDRESS      VARCHAR(200) COMMENT '联系人地址',
   CONTACT_POSTCODE     VARCHAR(10) COMMENT '联系人邮编',
   CONTACT_CERTIFICATE_NO VARCHAR(30) COMMENT '联系人证件号码',
   CONTACT_CERTIFICATE_TYPE VARCHAR(20) COMMENT '联系人证件类型.数据来源：字典表',
   REMARKS              VARCHAR(200) COMMENT '描述',
   CREATE_DATE          TIMESTAMP DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
   UPDATE_DATE          TIMESTAMP COMMENT '最后修改时间',
   CREATE_BY            BIGINT COMMENT '创建人',
   UPDATE_BY            BIGINT COMMENT '最后修改人',
   DEL_FLAG             INT COMMENT '删除标记（0：正常；1：删除；2：审核）',
   PRIMARY KEY (ID)
)ENGINE=InnoDB AUTO_INCREMENT=1000 DEFAULT CHARSET=utf8 COMMENT '公司信息表';

ALTER TABLE SYS_COMPANY COMMENT '公司信息表';

/*==============================================================*/
/* Table: SYS_DEPARTMENT                                        */
/*==============================================================*/
CREATE TABLE SYS_DEPARTMENT
(
   ID                   BIGINT NOT NULL AUTO_INCREMENT COMMENT '系统自动ID',
   DEP_NAME             VARCHAR(50) COMMENT '部门名称',
   COMP_ID              BIGINT COMMENT '公司ID',
   COMP_FULL_NAME       VARCHAR(100) COMMENT '公司名称',
   PARENT_ID            BIGINT COMMENT '上级部门ID',
   DEP_ORDER            INT COMMENT '排序',
   REMARKS              VARCHAR(200) COMMENT '描述',
   CREATE_DATE          TIMESTAMP DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
   UPDATE_DATE          TIMESTAMP COMMENT '最后修改时间',
   CREATE_BY            BIGINT COMMENT '创建人',
   UPDATE_BY            BIGINT COMMENT '最后修改人',
   DEL_FLAG             INT COMMENT '删除标记（0：正常；1：删除；2：审核）',
   PRIMARY KEY (ID)
)ENGINE=InnoDB AUTO_INCREMENT=1000 DEFAULT CHARSET=utf8 COMMENT '部门表';


/*==============================================================*/
/* Table: SYS_DICTIONARY                                        */
/*==============================================================*/
CREATE TABLE SYS_DICTIONARY
(
   ID                   BIGINT NOT NULL AUTO_INCREMENT COMMENT '系统自动ID',
   APP_ID               BIGINT COMMENT '系统ID，sys_application.id，
            全局配置：public，每个应用私有字典为app_id',
   DIC_CODE             VARCHAR(20) COMMENT '编码/类型',
   DIC_VALUE            VARCHAR(20) COMMENT '值',
   DIC_NAME             VARCHAR(50) COMMENT '名称',
   DIC_ORDER            INT COMMENT '排序',
   PARENT_ID            BIGINT COMMENT '上级类型ID',
   REMARKS              VARCHAR(100) COMMENT '描述',
   CREATE_DATE          TIMESTAMP DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
   UPDATE_DATE          TIMESTAMP COMMENT '最后修改时间',
   CREATE_BY            BIGINT COMMENT '创建人',
   UPDATE_BY            BIGINT COMMENT '最后修改人',
   DEL_FLAG             INT COMMENT '删除标记（0：正常；1：删除；2：审核）',
   PRIMARY KEY (ID)
)ENGINE=InnoDB AUTO_INCREMENT=1000 DEFAULT CHARSET=utf8 COMMENT '系统字典表';


/*==============================================================*/
/* Table: SYS_MODULE                                            */
/*==============================================================*/
CREATE TABLE SYS_MODULE
(
   ID                   BIGINT NOT NULL AUTO_INCREMENT COMMENT '自增ID',
   APP_ID               BIGINT COMMENT '系统ID，sys_application.id',
   MOD_CODE             VARCHAR(20) COMMENT '编码',
   MOD_NAME             VARCHAR(20) COMMENT '名称',
   MOD_VALUE            VARCHAR(20) COMMENT '值',
   LINK_URL             VARCHAR(100) COMMENT '链接路径',
   MOD_ICON             VARCHAR(100) COMMENT '图标',
   ACCORDION            INT COMMENT '是否可折叠，0：是，1：否',
   PARENT_ID            BIGINT COMMENT '父级ID',
   MOD_ORDER            INT COMMENT '排序',
   REMARKS              VARCHAR(100) COMMENT '描述',
   CREATE_DATE          TIMESTAMP DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
   UPDATE_DATE          TIMESTAMP COMMENT '最后修改时间',
   CREATE_BY            BIGINT COMMENT '创建人',
   UPDATE_BY            BIGINT COMMENT '最后修改人',
   DEL_FLAG             INT COMMENT '删除标记（0：正常；1：删除；2：审核）',
   PRIMARY KEY (ID)
)ENGINE=InnoDB AUTO_INCREMENT=1000 DEFAULT CHARSET=utf8 COMMENT '系统模块表';

/*==============================================================*/
/* Table: SYS_POSITION                                          */
/*==============================================================*/
CREATE TABLE SYS_POSITION
(
   ID                   BIGINT NOT NULL AUTO_INCREMENT COMMENT '系统自动ID',
   COM_ID               BIGINT COMMENT '公司ID',
   DEP_ID               BIGINT COMMENT '部门ID',
   POS_CODE             VARCHAR(20) COMMENT '职位编码',
   POS_NAME             VARCHAR(20) COMMENT '职位名称',
   PARENT_ID            BIGINT COMMENT '父级职位ID',
   POS_ORDER            INT COMMENT '排序',
   REMARKS              VARCHAR(100) COMMENT '描述',
   CREATE_DATE          TIMESTAMP DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
   UPDATE_DATE          TIMESTAMP COMMENT '最后修改时间',
   CREATE_BY            BIGINT COMMENT '创建人',
   UPDATE_BY            BIGINT COMMENT '最后修改人',
   DEL_FLAG             INT COMMENT '删除标记（0：正常；1：删除；2：审核）',
   PRIMARY KEY (ID)
)ENGINE=InnoDB AUTO_INCREMENT=1000 DEFAULT CHARSET=utf8 COMMENT '职位表，有上级与下级之分';


/*==============================================================*/
/* Table: SYS_ROLE                                              */
/*==============================================================*/
CREATE TABLE SYS_ROLE
(
   ID                   BIGINT NOT NULL AUTO_INCREMENT COMMENT '系统自动ID',
   APP_ID               BIGINT COMMENT '系统ID，sys_application.id',
   ROLE_CODE            VARCHAR(20) COMMENT '角色编码',
   ROLE_NAME            VARCHAR(50) COMMENT '角色名称',
   REMARKS              VARCHAR(100) COMMENT '描述',
   CREATE_DATE          TIMESTAMP DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
   UPDATE_DATE          TIMESTAMP COMMENT '最后修改时间',
   CREATE_BY            BIGINT COMMENT '创建人',
   UPDATE_BY            BIGINT COMMENT '最后修改人',
   DEL_FLAG             INT COMMENT '删除标记（0：正常；1：删除；2：审核）',
   PRIMARY KEY (ID)
)ENGINE=InnoDB AUTO_INCREMENT=1000 DEFAULT CHARSET=utf8 COMMENT '系统角色表，基本权限的集合。无上级与下级之分';


/*==============================================================*/
/* Table: SYS_THEME                                             */
/*==============================================================*/
CREATE TABLE SYS_THEME
(
   T_ID                 INT NOT NULL AUTO_INCREMENT COMMENT '主键ID',
   T_NAME               VARCHAR(64) COMMENT '名称',
   T_IMAGE              VARCHAR(200) COMMENT '图片',
   REMARKS              VARCHAR(2000) COMMENT '描述',
   CREATE_DATE          TIMESTAMP DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
   UPDATE_DATE          TIMESTAMP COMMENT '最后修改时间',
   CREATE_BY            BIGINT COMMENT '创建人',
   UPDATE_BY            BIGINT COMMENT '最后修改人',
   DEL_FLAG             INT COMMENT '删除标记（0：正常；1：删除；2：审核）',
   IS_DEFAULT           INT COMMENT '是否默认主题：0：是，1：不是',
   PRIMARY KEY (T_ID)
)ENGINE=InnoDB AUTO_INCREMENT=1000 DEFAULT CHARSET=utf8 COMMENT '系统主题表';

/*==============================================================*/
/* Table: SYS_USER                                              */
/*==============================================================*/
CREATE TABLE SYS_USER
(
   ID                   BIGINT NOT NULL AUTO_INCREMENT COMMENT '系统自动ID',
   LOGIN_NAME           VARCHAR(20) COMMENT '用户名',
   LOGIN_PASSWORD       VARCHAR(50) COMMENT '密码',
   COM_ID               BIGINT COMMENT '公司ID',
   DEP_ID               BIGINT COMMENT '部门ID',
   STATUS               INT COMMENT '状态。0：新增（初始化），1：在职，2：离职',
   REAL_NAME            VARCHAR(50) COMMENT '姓名',
   JOB_NUMBER           VARCHAR(20) COMMENT '工号',
   GENDER               VARCHAR(2) COMMENT '性别',
   BIRTH_DATE           DATE COMMENT '出生日期',
   MOBILE               VARCHAR(20) COMMENT '移动电话',
   PHONE                VARCHAR(20) COMMENT '联系电话',
   EMAIL                VARCHAR(100) COMMENT '邮箱地址',
   WECHAT               VARCHAR(100) COMMENT '微信',
   QQ                   VARCHAR(20) COMMENT 'QQ',
   PHOTO                VARCHAR(100) COMMENT '照片',
   ENTRY_DATE           DATE COMMENT '入职日期.yyyyMMdd',
   LEAVE_DATE           DATE COMMENT '离职日期.yyyyMMdd',
   TAG                  VARCHAR(100) COMMENT '标签，例如：经理，话务员，组长等标签组合',
   LAST_LOGIN_TIME      TIMESTAMP COMMENT '最后登录时间',
   LAST_LOGIN_IP        VARCHAR(50) COMMENT '最后登录IP',
   REMARKS              VARCHAR(100) COMMENT '描述',
   CREATE_DATE          TIMESTAMP DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
   UPDATE_DATE          TIMESTAMP COMMENT '最后修改时间',
   CREATE_BY            BIGINT COMMENT '创建人',
   UPDATE_BY            BIGINT COMMENT '最后修改人',
   DEL_FLAG             INT COMMENT '删除标记（0：正常；1：删除；2：审核）',
   PRIMARY KEY (ID)
)ENGINE=InnoDB AUTO_INCREMENT=1000 DEFAULT CHARSET=utf8 COMMENT '登录用户基本信息表';

/*=====================================================================================*/

/*==============================================================*/
/* Table: SYS_APP_USER                                          */
/*==============================================================*/
CREATE TABLE SYS_APP_USER
(
   APP_ID               BIGINT NOT NULL COMMENT '系统ID,sys_application.id',
   USER_ID              BIGINT NOT NULL COMMENT '登录用户ID',
   CREATE_DATE          TIMESTAMP DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
   UPDATE_DATE          TIMESTAMP COMMENT '最后修改时间',
   CREATE_BY            BIGINT COMMENT '创建人',
   UPDATE_BY            BIGINT COMMENT '最后修改人',
   DEL_FLAG             INT COMMENT '删除标记（0：正常；1：删除；2：审核）',
   PRIMARY KEY (APP_ID, USER_ID)
)ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT '系统授权用户表';


/*==============================================================*/
/* Table: SYS_PERMI_GROUP                                       */
/*==============================================================*/
CREATE TABLE SYS_PERMI_GROUP
(
   ID                   BIGINT NOT NULL AUTO_INCREMENT COMMENT '系统自动生ID',
   APP_ID               BIGINT COMMENT '系统ID，sys_application.id',
   GROUP_NAME           VARCHAR(50) COMMENT '权限组名称',
   PERMI_ID             BIGINT COMMENT '权限ID',
   PERMI_CODE           VARCHAR(20) COMMENT '权限编码',
   PARENT_ID            BIGINT COMMENT '父级组ID',
   REMARKS              VARCHAR(100) COMMENT '描述',
   CREATE_DATE          TIMESTAMP DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
   UPDATE_DATE          TIMESTAMP COMMENT '最后修改时间',
   CREATE_BY            BIGINT COMMENT '创建人',
   UPDATE_BY            BIGINT COMMENT '最后修改人',
   DEL_FLAG             INT COMMENT '删除标记（0：正常；1：删除；2：审核）',
   PRIMARY KEY (ID)
)ENGINE=InnoDB AUTO_INCREMENT=1000 DEFAULT CHARSET=utf8 COMMENT '权限组表，将一模块的中的所有权限划分一个权限组中，可以通过权限组授予用户权限';


/*==============================================================*/
/* Table: SYS_PERMISSION                                        */
/*==============================================================*/
CREATE TABLE SYS_PERMISSION
(
   ID                   BIGINT COMMENT '系统自动ID',
   APP_ID               BIGINT NOT NULL COMMENT '系统ID，sys_application.id',
   MOD_ID               BIGINT NOT NULL COMMENT '系统模块ID',
   ACT_ID               BIGINT NOT NULL COMMENT '系统动作ID',
   TYPE                 VARCHAR(20) COMMENT '类型。菜单，按钮。。。数据来源：字典表',
   PER_CODE             VARCHAR(20) NOT NULL COMMENT '编码，由sys_module中的编码与sys_action中的编码组成',
   PER_VALUE            VARCHAR(20) COMMENT '权限值，由sys_module.value与sys_action.value组合而成，采用下划线来连接。',
   PRIMARY KEY (APP_ID, MOD_ID, ACT_ID)
)ENGINE=InnoDB AUTO_INCREMENT=1000 DEFAULT CHARSET=utf8 COMMENT '由sys_module与sys_action两表结合产生的系统基本权限表';

/*==============================================================*/
/* Table: SYS_POSTION_PERMIT                                    */
/*==============================================================*/
CREATE TABLE SYS_POSTION_PERMIT
(
   POS_ID               BIGINT NOT NULL COMMENT '职位ID',
   PER_ID               BIGINT NOT NULL COMMENT '权限ID',
   CREATE_DATE          TIMESTAMP DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
   UPDATE_DATE          TIMESTAMP COMMENT '最后修改时间',
   CREATE_BY            BIGINT COMMENT '创建人',
   UPDATE_BY            BIGINT COMMENT '最后修改人',
   DEL_FLAG             INT COMMENT '删除标记（0：正常；1：删除；2：审核）',
   PRIMARY KEY (POS_ID, PER_ID)
)ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT '职位授权表';


/*==============================================================*/
/* Table: SYS_POSTION_USER                                      */
/*==============================================================*/
CREATE TABLE SYS_POSTION_USER
(
   ID                   BIGINT NOT NULL AUTO_INCREMENT COMMENT '自增长ID',
   COM_ID               BIGINT COMMENT '公司ID',
   DEP_ID               BIGINT COMMENT '部门ID',
   POS_ID               BIGINT COMMENT '职位ID',
   USER_ID              BIGINT COMMENT '登录用户ID',
   JOB_NUMBER           VARCHAR(20) COMMENT '员工工号',
   REMARKS              VARCHAR(100) COMMENT '描述',
   CREATE_DATE          TIMESTAMP DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
   UPDATE_DATE          TIMESTAMP COMMENT '最后修改时间',
   CREATE_BY            BIGINT COMMENT '创建人',
   UPDATE_BY            BIGINT COMMENT '最后修改人',
   DEL_FLAG             INT COMMENT '删除标记（0：正常；1：删除；2：审核）',
   PRIMARY KEY (ID)
)ENGINE=InnoDB AUTO_INCREMENT=1000 DEFAULT CHARSET=utf8 COMMENT '职位成员表';


/*==============================================================*/
/* Table: SYS_ROLE_PERMIT                                       */
/*==============================================================*/
CREATE TABLE SYS_ROLE_PERMIT
(
   ROLE_ID              BIGINT NOT NULL COMMENT '角色ID',
   PER_ID               BIGINT NOT NULL COMMENT '权限ID',
   CREATE_DATE          TIMESTAMP DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
   UPDATE_DATE          TIMESTAMP COMMENT '最后修改时间',
   CREATE_BY            BIGINT COMMENT '创建人',
   UPDATE_BY            BIGINT COMMENT '最后修改人',
   DEL_FLAG             INT COMMENT '删除标记（0：正常；1：删除；2：审核）',
   PRIMARY KEY (ROLE_ID, PER_ID)
)ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT '角色授权表';


/*==============================================================*/
/* Table: SYS_USER_PERMIT                                       */
/*==============================================================*/
CREATE TABLE SYS_USER_PERMIT
(
   USER_ID             BIGINT NOT NULL COMMENT '登录用户ID',
   PER_ID               BIGINT NOT NULL COMMENT '权限ID',
   CREATE_DATE          TIMESTAMP DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
   UPDATE_DATE          TIMESTAMP COMMENT '最后修改时间',
   CREATE_BY            BIGINT COMMENT '创建人',
   UPDATE_BY            BIGINT COMMENT '最后修改人',
   DEL_FLAG             INT COMMENT '删除标记（0：正常；1：删除；2：审核）',
   PRIMARY KEY (USER_ID, PER_ID)
)ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT '用户授权表，用户ID与角色、职位及直接授予的权限串表';

