package com.ruoyi.school.domain.vo;

import com.ruoyi.common.annotation.Excel;
import com.ruoyi.common.core.domain.BaseEntity;
import com.ruoyi.school.domain.SchGrades;
import lombok.Data;

@Data
public class SchClassVo extends BaseEntity {

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

    /** 年级信息 */
    private SchGrades schGrades;
}
