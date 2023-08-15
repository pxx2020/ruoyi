package com.ruoyi.school.domain;

import org.apache.commons.lang3.builder.ToStringBuilder;
import org.apache.commons.lang3.builder.ToStringStyle;
import com.ruoyi.common.annotation.Excel;
import com.ruoyi.common.core.domain.BaseEntity;

/**
 * 教师管理对象 sch_teacher
 * 
 * @author ruoyi
 * @date 2023-08-15
 */
public class SchTeacher extends BaseEntity
{
    private static final long serialVersionUID = 1L;

    /** 老师ID */
    private Long teacherId;

    /** 老师姓名 */
    @Excel(name = "老师姓名")
    private String teacherName;

    /** 老师电话 */
    @Excel(name = "老师电话")
    private String teacherPhone;

    public void setTeacherId(Long teacherId) 
    {
        this.teacherId = teacherId;
    }

    public Long getTeacherId() 
    {
        return teacherId;
    }
    public void setTeacherName(String teacherName) 
    {
        this.teacherName = teacherName;
    }

    public String getTeacherName() 
    {
        return teacherName;
    }
    public void setTeacherPhone(String teacherPhone) 
    {
        this.teacherPhone = teacherPhone;
    }

    public String getTeacherPhone() 
    {
        return teacherPhone;
    }

    @Override
    public String toString() {
        return new ToStringBuilder(this,ToStringStyle.MULTI_LINE_STYLE)
            .append("teacherId", getTeacherId())
            .append("teacherName", getTeacherName())
            .append("teacherPhone", getTeacherPhone())
            .append("createBy", getCreateBy())
            .append("createTime", getCreateTime())
            .append("updateBy", getUpdateBy())
            .append("updateTime", getUpdateTime())
            .append("remark", getRemark())
            .toString();
    }
}
