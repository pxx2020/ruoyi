package com.ruoyi.school.service;

import java.util.List;
import com.ruoyi.school.domain.SchGrades;

/**
 * 学生年级Service接口
 * 
 * @author ruoyi
 * @date 2023-08-14
 */
public interface ISchGradesService 
{
    /**
     * 查询学生年级
     * 
     * @param gradeId 学生年级主键
     * @return 学生年级
     */
    public SchGrades selectSchGradesByGradeId(Long gradeId);

    /**
     * 查询学生年级列表
     * 
     * @param schGrades 学生年级
     * @return 学生年级集合
     */
    public List<SchGrades> selectSchGradesList(SchGrades schGrades);

    /**
     * 新增学生年级
     * 
     * @param schGrades 学生年级
     * @return 结果
     */
    public int insertSchGrades(SchGrades schGrades);

    /**
     * 修改学生年级
     * 
     * @param schGrades 学生年级
     * @return 结果
     */
    public int updateSchGrades(SchGrades schGrades);

    /**
     * 批量删除学生年级
     * 
     * @param gradeIds 需要删除的学生年级主键集合
     * @return 结果
     */
    public int deleteSchGradesByGradeIds(Long[] gradeIds);

    /**
     * 删除学生年级信息
     * 
     * @param gradeId 学生年级主键
     * @return 结果
     */
    public int deleteSchGradesByGradeId(Long gradeId);
}
