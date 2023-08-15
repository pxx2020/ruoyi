package com.ruoyi.school.domain.dto;

import com.fasterxml.jackson.annotation.JsonFormat;
import com.ruoyi.common.core.domain.BaseEntity;
import lombok.Data;

import java.util.Date;
@Data
public class SchStudentDto extends BaseEntity {

    /** 学生ID */
    private Long studentId;

    /** 学生姓名 */
    private String studentName;

    /** 学生性别 */
    private String studentSex;

    /** 出生日期 */
    @JsonFormat(pattern = "yyyy-MM-dd")
    private Date studentBirthday;

    /** 联系电话 */
    private String studentPhone;

    /** 联系地址 */
    private String studentAddress;

    /** 班级id */
    private Long classId;

    /** 年级id */
    private Long gradeId;
}
