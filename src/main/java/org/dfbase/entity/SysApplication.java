package org.dfbase.entity;

import java.util.Date;

public class SysApplication {
    private Long id;

    private String appCode;

    private String appName;

    private String logo;

    private String appTitle;

    private String appKeyword;

    private String appCopyright;

    private Long appThemeId;

    private String adminName;

    private String adminPhoneNum;

    private String adminMail;

    private String remarks;

    private Date createDate;

    private Date updateDate;

    private Long createBy;

    private Long updateBy;

    private Integer delFlag;

    public Long getId() {
        return id;
    }

    public void setId(Long id) {
        this.id = id;
    }

    public String getAppCode() {
        return appCode;
    }

    public void setAppCode(String appCode) {
        this.appCode = appCode;
    }

    public String getAppName() {
        return appName;
    }

    public void setAppName(String appName) {
        this.appName = appName;
    }

    public String getLogo() {
        return logo;
    }

    public void setLogo(String logo) {
        this.logo = logo;
    }

    public String getAppTitle() {
        return appTitle;
    }

    public void setAppTitle(String appTitle) {
        this.appTitle = appTitle;
    }

    public String getAppKeyword() {
        return appKeyword;
    }

    public void setAppKeyword(String appKeyword) {
        this.appKeyword = appKeyword;
    }

    public String getAppCopyright() {
        return appCopyright;
    }

    public void setAppCopyright(String appCopyright) {
        this.appCopyright = appCopyright;
    }

    public Long getAppThemeId() {
        return appThemeId;
    }

    public void setAppThemeId(Long appThemeId) {
        this.appThemeId = appThemeId;
    }

    public String getAdminName() {
        return adminName;
    }

    public void setAdminName(String adminName) {
        this.adminName = adminName;
    }

    public String getAdminPhoneNum() {
        return adminPhoneNum;
    }

    public void setAdminPhoneNum(String adminPhoneNum) {
        this.adminPhoneNum = adminPhoneNum;
    }

    public String getAdminMail() {
        return adminMail;
    }

    public void setAdminMail(String adminMail) {
        this.adminMail = adminMail;
    }

    public String getRemarks() {
        return remarks;
    }

    public void setRemarks(String remarks) {
        this.remarks = remarks;
    }

    public Date getCreateDate() {
        return createDate;
    }

    public void setCreateDate(Date createDate) {
        this.createDate = createDate;
    }

    public Date getUpdateDate() {
        return updateDate;
    }

    public void setUpdateDate(Date updateDate) {
        this.updateDate = updateDate;
    }

    public Long getCreateBy() {
        return createBy;
    }

    public void setCreateBy(Long createBy) {
        this.createBy = createBy;
    }

    public Long getUpdateBy() {
        return updateBy;
    }

    public void setUpdateBy(Long updateBy) {
        this.updateBy = updateBy;
    }

    public Integer getDelFlag() {
        return delFlag;
    }

    public void setDelFlag(Integer delFlag) {
        this.delFlag = delFlag;
    }
}