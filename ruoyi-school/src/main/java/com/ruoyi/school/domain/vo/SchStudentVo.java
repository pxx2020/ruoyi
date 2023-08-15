package com.ruoyi.school.domain.vo;

import com.fasterxml.jackson.annotation.JsonFormat;
import com.ruoyi.common.annotation.Excel;
import com.ruoyi.common.core.domain.BaseEntity;
import com.ruoyi.school.domain.SchClass;
import lombok.Data;

import java.util.Date;

@Data
public class SchStudentVo extends BaseEntity {

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

    /** 班级ID */
    private Long classId;

    /** 班级名称 */
    private String className;

    /** 班级信息 */
    private SchClassVo schClassVo;

}
