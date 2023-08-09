package com.ruoyi.school.service.impl;

import java.util.List;
import com.ruoyi.common.utils.DateUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import com.ruoyi.school.mapper.SchClassMapper;
import com.ruoyi.school.domain.SchClass;
import com.ruoyi.school.service.ISchClassService;

/**
 * 学生班级Service业务层处理
 * 
 * @author ruoyi
 * @date 2023-08-09
 */
@Service
public class SchClassServiceImpl implements ISchClassService 
{
    @Autowired
    private SchClassMapper schClassMapper;

    /**
     * 查询学生班级
     * 
     * @param classId 学生班级主键
     * @return 学生班级
     */
    @Override
    public SchClass selectSchClassByClassId(Long classId)
    {
        return schClassMapper.selectSchClassByClassId(classId);
    }

    /**
     * 查询学生班级列表
     * 
     * @param schClass 学生班级
     * @return 学生班级
     */
    @Override
    public List<SchClass> selectSchClassList(SchClass schClass)
    {
        return schClassMapper.selectSchClassList(schClass);
    }

    /**
     * 新增学生班级
     * 
     * @param schClass 学生班级
     * @return 结果
     */
    @Override
    public int insertSchClass(SchClass schClass)
    {
        schClass.setCreateTime(DateUtils.getNowDate());
        return schClassMapper.insertSchClass(schClass);
    }

    /**
     * 修改学生班级
     * 
     * @param schClass 学生班级
     * @return 结果
     */
    @Override
    public int updateSchClass(SchClass schClass)
    {
        schClass.setUpdateTime(DateUtils.getNowDate());
        return schClassMapper.updateSchClass(schClass);
    }

    /**
     * 批量删除学生班级
     * 
     * @param classIds 需要删除的学生班级主键
     * @return 结果
     */
    @Override
    public int deleteSchClassByClassIds(Long[] classIds)
    {
        return schClassMapper.deleteSchClassByClassIds(classIds);
    }

    /**
     * 删除学生班级信息
     * 
     * @param classId 学生班级主键
     * @return 结果
     */
    @Override
    public int deleteSchClassByClassId(Long classId)
    {
        return schClassMapper.deleteSchClassByClassId(classId);
    }
}
