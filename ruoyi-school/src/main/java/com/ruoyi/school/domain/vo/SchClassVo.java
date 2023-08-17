package com.ruoyi.school.domain.vo;

import com.fasterxml.jackson.annotation.JsonInclude;
import com.ruoyi.common.annotation.Excel;
import com.ruoyi.common.core.domain.BaseEntity;
import com.ruoyi.school.domain.SchGrades;
import lombok.Data;

@Data
@JsonInclude(JsonInclude.Include.NON_NULL)
public class SchClassVo extends BaseEntity {

    /** 班级ID */
    private Long classId;

    /** 年级ID */
    private Long gradeId;

    /** 老师ID */
    private Long teacherId;

    /** 班级名称 */
    private String className;

    /** 班级容量 */
    private Long capacity;

    /** 年级信息 */
    private SchGrades schGrades;


}
