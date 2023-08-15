package com.ruoyi.school.mapper;

import java.util.List;

import com.ruoyi.school.domain.SchClass;
import com.ruoyi.school.domain.SchTeacher;

/**
 * 教师管理Mapper接口
 * 
 * @author ruoyi
 * @date 2023-08-15
 */
public interface SchTeacherMapper 
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
     * 查询教师绑定的班级列表
     * @param teacherId
     * @return
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
     * 删除教师管理
     * 
     * @param teacherId 教师管理主键
     * @return 结果
     */
    public int deleteSchTeacherByTeacherId(Long teacherId);

    /**
     * 批量删除教师管理
     * 
     * @param teacherIds 需要删除的数据主键集合
     * @return 结果
     */
    public int deleteSchTeacherByTeacherIds(Long[] teacherIds);
}
