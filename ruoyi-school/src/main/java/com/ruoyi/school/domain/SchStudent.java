package com.ruoyi.school.domain;

import java.util.Date;
import com.fasterxml.jackson.annotation.JsonFormat;
import org.apache.commons.lang3.builder.ToStringBuilder;
import org.apache.commons.lang3.builder.ToStringStyle;
import com.ruoyi.common.annotation.Excel;
import com.ruoyi.common.core.domain.BaseEntity;

/**
 * 学生信息对象 sch_student
 * 
 * @author ruoyi
 * @date 2023-08-09
 */
public class SchStudent extends BaseEntity
{
    private static final long serialVersionUID = 1L;

    /** 学生ID */
    private Long studentId;

    /** 学生姓名 */
    @Excel(name = "学生姓名")
    private String studentName;

    /** 学生性别 */
    @Excel(name = "学生性别")
    private String studentSex;

    /** 出生日期 */
    @JsonFormat(pattern = "yyyy-MM-dd")
    @Excel(name = "出生日期", width = 30, dateFormat = "yyyy-MM-dd")
    private Date studentBirthday;

    /** 联系电话 */
    @Excel(name = "联系电话")
    private String studentPhone;

    /** 联系地址 */
    @Excel(name = "联系地址")
    private String studentAddress;

    /** 所在班级 */
    @Excel(name = "所在班级")
    private Long classId;

    public void setStudentId(Long studentId) 
    {
        this.studentId = studentId;
    }
    public Long getStudentId() 
    {
        return studentId;
    }

    public void setStudentName(String studentName) 
    {
        this.studentName = studentName;
    }
    public String getStudentName() 
    {
        return studentName;
    }

    public void setStudentSex(String studentSex) 
    {
        this.studentSex = studentSex;
    }
    public String getStudentSex() 
    {
        return studentSex;
    }

    public void setStudentBirthday(Date studentBirthday) 
    {
        this.studentBirthday = studentBirthday;
    }
    public Date getStudentBirthday() 
    {
        return studentBirthday;
    }

    public void setStudentPhone(String studentPhone) 
    {
        this.studentPhone = studentPhone;
    }
    public String getStudentPhone() 
    {
        return studentPhone;
    }

    public void setStudentAddress(String studentAddress) 
    {
        this.studentAddress = studentAddress;
    }
    public String getStudentAddress() 
    {
        return studentAddress;
    }

    public void setClassId(Long classId) 
    {
        this.classId = classId;
    }
    public Long getClassId() 
    {
        return classId;
    }


    @Override
    public String toString() {
        return new ToStringBuilder(this,ToStringStyle.MULTI_LINE_STYLE)
            .append("studentId", getStudentId())
            .append("studentName", getStudentName())
            .append("studentSex", getStudentSex())
            .append("studentBirthday", getStudentBirthday())
            .append("studentPhone", getStudentPhone())
            .append("studentAddress", getStudentAddress())
            .append("classId", getClassId())
            .append("createBy", getCreateBy())
            .append("createTime", getCreateTime())
            .append("updateBy", getUpdateBy())
            .append("updateTime", getUpdateTime())
            .append("remark", getRemark())
            .toString();
    }
}
