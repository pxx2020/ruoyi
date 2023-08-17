package com.ruoyi.school.service.impl;

import java.util.List;
import java.util.Map;

import com.ruoyi.common.utils.DateUtils;
import com.ruoyi.school.domain.SchClass;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import com.ruoyi.school.mapper.SchTeacherMapper;
import com.ruoyi.school.domain.SchTeacher;
import com.ruoyi.school.service.ISchTeacherService;

/**
 * 教师管理Service业务层处理
 * 
 * @author ruoyi
 * @date 2023-08-15
 */
@Service
public class SchTeacherServiceImpl implements ISchTeacherService 
{
    @Autowired
    private SchTeacherMapper schTeacherMapper;

    /**
     * 查询教师管理
     * 
     * @param teacherId 教师管理主键
     * @return 教师管理
     */
    @Override
    public SchTeacher selectSchTeacherByTeacherId(Long teacherId)
    {
        return schTeacherMapper.selectSchTeacherByTeacherId(teacherId);
    }

    /**
     * 查询教师管理列表
     * 
     * @param schTeacher 教师管理
     * @return 教师管理
     */
    @Override
    public List<SchTeacher> selectSchTeacherList(SchTeacher schTeacher)
    {
        return schTeacherMapper.selectSchTeacherList(schTeacher);
    }

    /**
     * 查询教师绑定的班级列表
     * @param teacherId
     * @return
     */
    @Override
    public List<SchClass> selectTeacherBoundClasses(Long teacherId) {
        return schTeacherMapper.selectTeacherBoundClasses(teacherId);
    }

    /**
     * 查询教师还未绑定的班级列表
     * @param teacherId
     * @return
     */
    @Override
    public List<SchClass> selectTeacherUnBoundClasses(Long teacherId) {
        return schTeacherMapper.selectTeacherUnBoundClasses(teacherId);
    }

    /**
     * 新增教师管理
     * 
     * @param schTeacher 教师管理
     * @return 结果
     */
    @Override
    public int insertSchTeacher(SchTeacher schTeacher)
    {
        schTeacher.setCreateTime(DateUtils.getNowDate());
        return schTeacherMapper.insertSchTeacher(schTeacher);
    }

    /**
     * 添加教师的班级
     * @param objectMap 班级id 和 教师id
     * @return
     */
    @Override
    public int insertSchTeacherClass(Map<String, Object> objectMap) {
        return schTeacherMapper.insertSchTeacherClass(objectMap);
    }

    /**
     * 修改教师管理
     * 
     * @param schTeacher 教师管理
     * @return 结果
     */
    @Override
    public int updateSchTeacher(SchTeacher schTeacher)
    {
        schTeacher.setUpdateTime(DateUtils.getNowDate());
        return schTeacherMapper.updateSchTeacher(schTeacher);
    }

    /**
     * 批量删除教师管理
     * 
     * @param teacherIds 需要删除的教师管理主键
     * @return 结果
     */
    @Override
    public int deleteSchTeacherByTeacherIds(Long[] teacherIds)
    {
        return schTeacherMapper.deleteSchTeacherByTeacherIds(teacherIds);
    }

    /**
     * 删除教师管理信息
     * 
     * @param teacherId 教师管理主键
     * @return 结果
     */
    @Override
    public int deleteSchTeacherByTeacherId(Long teacherId)
    {
        return schTeacherMapper.deleteSchTeacherByTeacherId(teacherId);
    }

    @Override
    public int deleteSchTeacherClassByTeacherIds(Map<String, Object> objectMap) {
        return schTeacherMapper.deleteSchTeacherClassByTeacherIds(objectMap);
    }
}
