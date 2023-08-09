package com.ruoyi.school.service;

import java.util.List;
import com.ruoyi.school.domain.SchClass;

/**
 * 学生班级Service接口
 * 
 * @author ruoyi
 * @date 2023-08-09
 */
public interface ISchClassService 
{
    /**
     * 查询学生班级
     * 
     * @param classId 学生班级主键
     * @return 学生班级
     */
    public SchClass selectSchClassByClassId(Long classId);

    /**
     * 查询学生班级列表
     * 
     * @param schClass 学生班级
     * @return 学生班级集合
     */
    public List<SchClass> selectSchClassList(SchClass schClass);

    /**
     * 新增学生班级
     * 
     * @param schClass 学生班级
     * @return 结果
     */
    public int insertSchClass(SchClass schClass);

    /**
     * 修改学生班级
     * 
     * @param schClass 学生班级
     * @return 结果
     */
    public int updateSchClass(SchClass schClass);

    /**
     * 批量删除学生班级
     * 
     * @param classIds 需要删除的学生班级主键集合
     * @return 结果
     */
    public int deleteSchClassByClassIds(Long[] classIds);

    /**
     * 删除学生班级信息
     * 
     * @param classId 学生班级主键
     * @return 结果
     */
    public int deleteSchClassByClassId(Long classId);
}
