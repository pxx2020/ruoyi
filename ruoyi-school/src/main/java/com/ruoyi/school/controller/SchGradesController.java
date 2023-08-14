package com.ruoyi.school.controller;

import java.util.List;
import javax.servlet.http.HttpServletResponse;
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
import com.ruoyi.school.domain.SchGrades;
import com.ruoyi.school.service.ISchGradesService;
import com.ruoyi.common.utils.poi.ExcelUtil;
import com.ruoyi.common.core.page.TableDataInfo;

/**
 * 学生年级Controller
 * 
 * @author ruoyi
 * @date 2023-08-14
 */
@RestController
@RequestMapping("/school/grades")
public class SchGradesController extends BaseController
{
    @Autowired
    private ISchGradesService schGradesService;

    /**
     * 查询学生年级列表
     */
    @PreAuthorize("@ss.hasPermi('school:grades:list')")
    @GetMapping("/list")
    public TableDataInfo list(SchGrades schGrades)
    {
        startPage();
        List<SchGrades> list = schGradesService.selectSchGradesList(schGrades);
        return getDataTable(list);
    }

    /**
     * 导出学生年级列表
     */
    @PreAuthorize("@ss.hasPermi('school:grades:export')")
    @Log(title = "学生年级", businessType = BusinessType.EXPORT)
    @PostMapping("/export")
    public void export(HttpServletResponse response, SchGrades schGrades)
    {
        List<SchGrades> list = schGradesService.selectSchGradesList(schGrades);
        ExcelUtil<SchGrades> util = new ExcelUtil<SchGrades>(SchGrades.class);
        util.exportExcel(response, list, "学生年级数据");
    }

    /**
     * 获取学生年级详细信息
     */
    @PreAuthorize("@ss.hasPermi('school:grades:query')")
    @GetMapping(value = "/{gradeId}")
    public AjaxResult getInfo(@PathVariable("gradeId") Long gradeId)
    {
        return success(schGradesService.selectSchGradesByGradeId(gradeId));
    }

    /**
     * 新增学生年级
     */
    @PreAuthorize("@ss.hasPermi('school:grades:add')")
    @Log(title = "学生年级", businessType = BusinessType.INSERT)
    @PostMapping
    public AjaxResult add(@RequestBody SchGrades schGrades)
    {
        return toAjax(schGradesService.insertSchGrades(schGrades));
    }

    /**
     * 修改学生年级
     */
    @PreAuthorize("@ss.hasPermi('school:grades:edit')")
    @Log(title = "学生年级", businessType = BusinessType.UPDATE)
    @PutMapping
    public AjaxResult edit(@RequestBody SchGrades schGrades)
    {
        return toAjax(schGradesService.updateSchGrades(schGrades));
    }

    /**
     * 删除学生年级
     */
    @PreAuthorize("@ss.hasPermi('school:grades:remove')")
    @Log(title = "学生年级", businessType = BusinessType.DELETE)
	@DeleteMapping("/{gradeIds}")
    public AjaxResult remove(@PathVariable Long[] gradeIds)
    {
        return toAjax(schGradesService.deleteSchGradesByGradeIds(gradeIds));
    }
}
