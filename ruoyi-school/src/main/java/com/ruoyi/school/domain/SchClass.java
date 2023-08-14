package com.ruoyi.school.domain;

import org.apache.commons.lang3.builder.ToStringBuilder;
import org.apache.commons.lang3.builder.ToStringStyle;
import com.ruoyi.common.annotation.Excel;
import com.ruoyi.common.core.domain.BaseEntity;

/**
 * 学生班级对象 sch_class
 * 
 * @author ruoyi
 * @date 2023-08-14
 */
public class SchClass extends BaseEntity
{
    private static final long serialVersionUID = 1L;

    /** 班级ID */
    private Long classId;

    /** 年级ID */
    @Excel(name = "年级ID")
    private Long gradesId;

    /** 班级名称 */
    @Excel(name = "班级名称")
    private String className;

    /** 班级容量 */
    @Excel(name = "班级容量")
    private Long capacity;

    public void setClassId(Long classId) 
    {
        this.classId = classId;
    }

    public Long getClassId() 
    {
        return classId;
    }
    public void setGradesId(Long gradesId) 
    {
        this.gradesId = gradesId;
    }

    public Long getGradesId() 
    {
        return gradesId;
    }
    public void setClassName(String className) 
    {
        this.className = className;
    }

    public String getClassName() 
    {
        return className;
    }
    public void setCapacity(Long capacity) 
    {
        this.capacity = capacity;
    }

    public Long getCapacity() 
    {
        return capacity;
    }

    @Override
    public String toString() {
        return new ToStringBuilder(this,ToStringStyle.MULTI_LINE_STYLE)
            .append("classId", getClassId())
            .append("gradesId", getGradesId())
            .append("className", getClassName())
            .append("capacity", getCapacity())
            .append("createBy", getCreateBy())
            .append("createTime", getCreateTime())
            .append("updateBy", getUpdateBy())
            .append("updateTime", getUpdateTime())
            .append("remark", getRemark())
            .toString();
    }
}
