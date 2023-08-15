package com.ruoyi.school.domain;

import com.fasterxml.jackson.annotation.JsonInclude;
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
@JsonInclude(JsonInclude.Include.NON_NULL)
public class SchClass extends BaseEntity {
    private static final long serialVersionUID = 1L;

    /** 班级ID */
    private Long classId;

    /** 年级 */
    @Excel(name = "年级")
    private Long gradeId;

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
    public void setGradeId(Long gradeId) 
    {
        this.gradeId = gradeId;
    }

    public Long getGradeId() 
    {
        return gradeId;
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
            .append("gradeId", getGradeId())
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
