package com.ruoyi.school.service.impl;

import java.util.List;
import com.ruoyi.common.utils.DateUtils;
import com.ruoyi.school.domain.dto.SchStudentDto;
import com.ruoyi.school.domain.vo.SchStudentVo;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import com.ruoyi.school.mapper.SchStudentMapper;
import com.ruoyi.school.domain.SchStudent;
import com.ruoyi.school.service.ISchStudentService;

/**
 * 学生信息Service业务层处理
 * 
 * @author ruoyi
 * @date 2023-08-07
 */
@Service
public class SchStudentServiceImpl implements ISchStudentService 
{
    @Autowired
    private SchStudentMapper schStudentMapper;

    /**
     * 查询学生信息
     * 
     * @param studentId 学生信息主键
     * @return 学生信息
     */
    @Override
    public SchStudentVo selectSchStudentByStudentId(Long studentId)
    {
        return schStudentMapper.selectSchStudentByStudentId(studentId);
    }

    /**
     * 查询学生信息列表
     * 
     * @param schStudent 学生信息
     * @return 学生信息
     */
    @Override
    public List<SchStudent> selectSchStudentList(SchStudent schStudent)
    {
        return schStudentMapper.selectSchStudentList(schStudent);
    }

    /**
     * 查询学生信息列表
     *
     * @param schStudentDto 学生信息
     * @return 学生信息
     */
    @Override
    public List<SchStudentVo> selectSchStudentListDto(SchStudentDto schStudentDto)
    {
        return schStudentMapper.selectSchStudentListDto(schStudentDto);
    }

    /**
     * 新增学生信息
     * 
     * @param schStudent 学生信息
     * @return 结果
     */
    @Override
    public int insertSchStudent(SchStudent schStudent)
    {
        schStudent.setCreateTime(DateUtils.getNowDate());
        return schStudentMapper.insertSchStudent(schStudent);
    }

    /**
     * 修改学生信息
     * 
     * @param schStudent 学生信息
     * @return 结果
     */
    @Override
    public int updateSchStudent(SchStudent schStudent)
    {
        schStudent.setUpdateTime(DateUtils.getNowDate());
        return schStudentMapper.updateSchStudent(schStudent);
    }

    /**
     * 批量删除学生信息
     * 
     * @param studentIds 需要删除的学生信息主键
     * @return 结果
     */
    @Override
    public int deleteSchStudentByStudentIds(Long[] studentIds)
    {
        return schStudentMapper.deleteSchStudentByStudentIds(studentIds);
    }

    /**
     * 删除学生信息信息
     * 
     * @param studentId 学生信息主键
     * @return 结果
     */
    @Override
    public int deleteSchStudentByStudentId(Long studentId)
    {
        return schStudentMapper.deleteSchStudentByStudentId(studentId);
    }
}
