package com.ruoyi.school.service;

import java.util.List;
import com.ruoyi.school.domain.SchStudent;

/**
 * 学生信息Service接口
 * 
 * @author ruoyi
 * @date 2023-08-07
 */
public interface ISchStudentService 
{
    /**
     * 查询学生信息
     * 
     * @param studentId 学生信息主键
     * @return 学生信息
     */
    public SchStudent selectSchStudentByStudentId(Long studentId);

    /**
     * 查询学生信息列表
     * 
     * @param schStudent 学生信息
     * @return 学生信息集合
     */
    public List<SchStudent> selectSchStudentList(SchStudent schStudent);

    /**
     * 新增学生信息
     * 
     * @param schStudent 学生信息
     * @return 结果
     */
    public int insertSchStudent(SchStudent schStudent);

    /**
     * 修改学生信息
     * 
     * @param schStudent 学生信息
     * @return 结果
     */
    public int updateSchStudent(SchStudent schStudent);

    /**
     * 批量删除学生信息
     * 
     * @param studentIds 需要删除的学生信息主键集合
     * @return 结果
     */
    public int deleteSchStudentByStudentIds(Long[] studentIds);

    /**
     * 删除学生信息信息
     * 
     * @param studentId 学生信息主键
     * @return 结果
     */
    public int deleteSchStudentByStudentId(Long studentId);
}
