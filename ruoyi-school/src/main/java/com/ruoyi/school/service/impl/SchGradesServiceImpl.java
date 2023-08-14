package com.ruoyi.school.service.impl;

import java.util.List;
import com.ruoyi.common.utils.DateUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import com.ruoyi.school.mapper.SchGradesMapper;
import com.ruoyi.school.domain.SchGrades;
import com.ruoyi.school.service.ISchGradesService;

/**
 * 学生年级Service业务层处理
 * 
 * @author ruoyi
 * @date 2023-08-14
 */
@Service
public class SchGradesServiceImpl implements ISchGradesService 
{
    @Autowired
    private SchGradesMapper schGradesMapper;

    /**
     * 查询学生年级
     * 
     * @param gradeId 学生年级主键
     * @return 学生年级
     */
    @Override
    public SchGrades selectSchGradesByGradeId(Long gradeId)
    {
        return schGradesMapper.selectSchGradesByGradeId(gradeId);
    }

    /**
     * 查询学生年级列表
     * 
     * @param schGrades 学生年级
     * @return 学生年级
     */
    @Override
    public List<SchGrades> selectSchGradesList(SchGrades schGrades)
    {
        return schGradesMapper.selectSchGradesList(schGrades);
    }

    /**
     * 新增学生年级
     * 
     * @param schGrades 学生年级
     * @return 结果
     */
    @Override
    public int insertSchGrades(SchGrades schGrades)
    {
        schGrades.setCreateTime(DateUtils.getNowDate());
        return schGradesMapper.insertSchGrades(schGrades);
    }

    /**
     * 修改学生年级
     * 
     * @param schGrades 学生年级
     * @return 结果
     */
    @Override
    public int updateSchGrades(SchGrades schGrades)
    {
        schGrades.setUpdateTime(DateUtils.getNowDate());
        return schGradesMapper.updateSchGrades(schGrades);
    }

    /**
     * 批量删除学生年级
     * 
     * @param gradeIds 需要删除的学生年级主键
     * @return 结果
     */
    @Override
    public int deleteSchGradesByGradeIds(Long[] gradeIds)
    {
        return schGradesMapper.deleteSchGradesByGradeIds(gradeIds);
    }

    /**
     * 删除学生年级信息
     * 
     * @param gradeId 学生年级主键
     * @return 结果
     */
    @Override
    public int deleteSchGradesByGradeId(Long gradeId)
    {
        return schGradesMapper.deleteSchGradesByGradeId(gradeId);
    }
}
