package com.ruoyi.school.service;

import java.util.List;

import com.ruoyi.school.domain.SchClass;
import com.ruoyi.school.domain.SchTeacher;

/**
 * 教师管理Service接口
 * 
 * @author ruoyi
 * @date 2023-08-15
 */
public interface ISchTeacherService 
{
    /**
     * 查询教师管理
     * 
     * @param teacherId 教师管理主键
     * @return 教师管理
     */
    public SchTeacher selectSchTeacherByTeacherId(Long teacherId);

    /**
     * 查询教师管理列表
     * 
     * @param schTeacher 教师管理
     * @return 教师管理集合
     */
    public List<SchTeacher> selectSchTeacherList(SchTeacher schTeacher);

    /**
     * 根据教师ID查询教师已绑定的班级集合
     * @param teacherId
     * @return 教师已绑定的班级集合
     */
    public List<SchClass> selectTeacherBoundClasses(Long teacherId);

    /**
     * 新增教师管理
     * 
     * @param schTeacher 教师管理
     * @return 结果
     */
    public int insertSchTeacher(SchTeacher schTeacher);

    /**
     * 修改教师管理
     * 
     * @param schTeacher 教师管理
     * @return 结果
     */
    public int updateSchTeacher(SchTeacher schTeacher);

    /**
     * 批量删除教师管理
     * 
     * @param teacherIds 需要删除的教师管理主键集合
     * @return 结果
     */
    public int deleteSchTeacherByTeacherIds(Long[] teacherIds);

    /**
     * 删除教师管理信息
     * 
     * @param teacherId 教师管理主键
     * @return 结果
     */
    public int deleteSchTeacherByTeacherId(Long teacherId);
}
