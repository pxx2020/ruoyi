package com.ruoyi.school.service;

import java.util.List;
import com.ruoyi.school.domain.SchGrades;

/**
 * 班级年级Service接口
 * 
 * @author ruoyi
 * @date 2023-08-14
 */
public interface ISchGradesService 
{
    /**
     * 查询班级年级
     * 
     * @param gradeId 班级年级主键
     * @return 班级年级
     */
    public SchGrades selectSchGradesByGradeId(Long gradeId);

    /**
     * 查询班级年级列表
     * 
     * @param schGrades 班级年级
     * @return 班级年级集合
     */
    public List<SchGrades> selectSchGradesList(SchGrades schGrades);

    /**
     * 新增班级年级
     * 
     * @param schGrades 班级年级
     * @return 结果
     */
    public int insertSchGrades(SchGrades schGrades);

    /**
     * 修改班级年级
     * 
     * @param schGrades 班级年级
     * @return 结果
     */
    public int updateSchGrades(SchGrades schGrades);

    /**
     * 批量删除班级年级
     * 
     * @param gradeIds 需要删除的班级年级主键集合
     * @return 结果
     */
    public int deleteSchGradesByGradeIds(Long[] gradeIds);

    /**
     * 删除班级年级信息
     * 
     * @param gradeId 班级年级主键
     * @return 结果
     */
    public int deleteSchGradesByGradeId(Long gradeId);
}
