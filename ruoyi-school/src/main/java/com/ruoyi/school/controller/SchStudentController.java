package com.ruoyi.school.controller;

import java.util.List;
import javax.servlet.http.HttpServletResponse;

import com.ruoyi.school.domain.SchTeacher;
import com.ruoyi.school.domain.dto.SchStudentDto;
import com.ruoyi.school.domain.vo.SchStudentVo;
import org.springframework.security.access.prepost.PreAuthorize;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.PutMapping;
import org.springframework.web.bind.annotation.DeleteMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;
import com.ruoyi.common.annotation.Log;
import com.ruoyi.common.core.controller.BaseController;
import com.ruoyi.common.core.domain.AjaxResult;
import com.ruoyi.common.enums.BusinessType;
import com.ruoyi.school.domain.SchStudent;
import com.ruoyi.school.service.ISchStudentService;
import com.ruoyi.common.utils.poi.ExcelUtil;
import com.ruoyi.common.core.page.TableDataInfo;

/**
 * 学生信息Controller
 * 
 * @author ruoyi
 * @date 2023-08-09
 */
@RestController
@RequestMapping("/school/student")
public class SchStudentController extends BaseController
{
    @Autowired
    private ISchStudentService schStudentService;

    /**
     * 查询学生信息列表
     */
    @PreAuthorize("@ss.hasPermi('school:student:list')")
    @GetMapping("/list")
    public TableDataInfo list(SchStudentDto schStudentDto)
    {
        startPage();
        List<SchStudentVo> list = schStudentService.selectSchStudentListDto(schStudentDto);
        return getDataTable(list);
    }

    /**
     * 查询学生的老师列表
     */
    @GetMapping("/getStudentTeachers")
    public TableDataInfo getStudentTeachers(SchStudentDto schStudentDto)
    {
        startPage();
        List<SchTeacher> list = schStudentService.selectStudentTeachers(schStudentDto);
        return getDataTable(list);
    }

    /**
     * 导出学生信息列表
     */
    @PreAuthorize("@ss.hasPermi('school:student:export')")
    @Log(title = "学生信息", businessType = BusinessType.EXPORT)
    @PostMapping("/export")
    public void export(HttpServletResponse response, SchStudent schStudent)
    {
        List<SchStudent> list = schStudentService.selectSchStudentList(schStudent);
        ExcelUtil<SchStudent> util = new ExcelUtil<SchStudent>(SchStudent.class);
        util.exportExcel(response, list, "学生信息数据");
    }

    /**
     * 获取学生信息详细信息
     */
    @PreAuthorize("@ss.hasPermi('school:student:query')")
    @GetMapping(value = "/{studentId}")
    public AjaxResult getInfo(@PathVariable("studentId") Long studentId)
    {
        return success(schStudentService.selectSchStudentByStudentId(studentId));
    }

    /**
     * 新增学生信息
     */
    @PreAuthorize("@ss.hasPermi('school:student:add')")
    @Log(title = "学生信息", businessType = BusinessType.INSERT)
    @PostMapping
    public AjaxResult add(@RequestBody SchStudent schStudent)
    {
        return toAjax(schStudentService.insertSchStudent(schStudent));
    }

    /**
     * 修改学生信息
     */
    @PreAuthorize("@ss.hasPermi('school:student:edit')")
    @Log(title = "学生信息", businessType = BusinessType.UPDATE)
    @PutMapping
    public AjaxResult edit(@RequestBody SchStudent schStudent)
    {
        return toAjax(schStudentService.updateSchStudent(schStudent));
    }

    /**
     * 删除学生信息
     */
    @PreAuthorize("@ss.hasPermi('school:student:remove')")
    @Log(title = "学生信息", businessType = BusinessType.DELETE)
	@DeleteMapping("/{studentIds}")
    public AjaxResult remove(@PathVariable Long[] studentIds)
    {
        return toAjax(schStudentService.deleteSchStudentByStudentIds(studentIds));
    }
}
