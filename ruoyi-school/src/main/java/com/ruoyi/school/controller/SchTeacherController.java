package com.ruoyi.school.controller;

import java.util.List;
import java.util.Map;
import javax.servlet.http.HttpServletResponse;

import com.ruoyi.school.domain.SchClass;
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
import com.ruoyi.school.domain.SchTeacher;
import com.ruoyi.school.service.ISchTeacherService;
import com.ruoyi.common.utils.poi.ExcelUtil;
import com.ruoyi.common.core.page.TableDataInfo;

/**
 * 教师管理Controller
 * 
 * @author ruoyi
 * @date 2023-08-15
 */
@RestController
@RequestMapping("/school/teacher")
public class SchTeacherController extends BaseController
{
    @Autowired
    private ISchTeacherService schTeacherService;

    /**
     * 查询教师管理列表
     */
    @PreAuthorize("@ss.hasPermi('school:teacher:list')")
    @GetMapping("/list")
    public TableDataInfo list(SchTeacher schTeacher)
    {
        startPage();
        List<SchTeacher> list = schTeacherService.selectSchTeacherList(schTeacher);
        return getDataTable(list);
    }

    /**
     * 查询老师已经绑定的班级列表
     * @param schTeacher  教师信息
     * @return 已经绑定的班级列表
     */
    @GetMapping("/getTeacherBoundClasses")
    public TableDataInfo getTeacherBoundClasses(SchTeacher schTeacher) {
        startPage();
        List<SchClass> list = schTeacherService.selectTeacherBoundClasses(schTeacher);
        return getDataTable(list);
    }

    /**
     * 查询老师还未绑定的班级列表
     * @param schTeacher 教师信息
     * @return 未绑定的班级列表
     */
    @GetMapping("/getTeacherUnBoundClasses")
    public TableDataInfo getTeacherUnBoundClasses(SchTeacher schTeacher) {
        startPage();
        List<SchClass> list = schTeacherService.selectTeacherUnBoundClasses(schTeacher);
        return getDataTable(list);
    }

    /**
     * 导出教师管理列表
     */
    @PreAuthorize("@ss.hasPermi('school:teacher:export')")
    @Log(title = "教师管理", businessType = BusinessType.EXPORT)
    @PostMapping("/export")
    public void export(HttpServletResponse response, SchTeacher schTeacher)
    {
        List<SchTeacher> list = schTeacherService.selectSchTeacherList(schTeacher);
        ExcelUtil<SchTeacher> util = new ExcelUtil<SchTeacher>(SchTeacher.class);
        util.exportExcel(response, list, "教师管理数据");
    }

    /**
     * 获取教师管理详细信息
     */
    @PreAuthorize("@ss.hasPermi('school:teacher:query')")
    @GetMapping(value = "/{teacherId}")
    public AjaxResult getInfo(@PathVariable("teacherId") Long teacherId)
    {
        return success(schTeacherService.selectSchTeacherByTeacherId(teacherId));
    }

    /**
     * 新增教师管理
     */
    @PreAuthorize("@ss.hasPermi('school:teacher:add')")
    @Log(title = "教师管理", businessType = BusinessType.INSERT)
    @PostMapping
    public AjaxResult add(@RequestBody SchTeacher schTeacher)
    {
        return toAjax(schTeacherService.insertSchTeacher(schTeacher));
    }

    /**
     * 添加教师的班级
     */
    @Log(title = "教师班级", businessType = BusinessType.INSERT)
    @PostMapping("/addTeacherBoundClass")
    public AjaxResult addTeacherBoundClass(@RequestBody Map<String,Object> objectMap)
    {
        return toAjax(schTeacherService.insertSchTeacherClass(objectMap));
    }

    /**
     * 修改教师管理
     */
    @PreAuthorize("@ss.hasPermi('school:teacher:edit')")
    @Log(title = "教师管理", businessType = BusinessType.UPDATE)
    @PutMapping
    public AjaxResult edit(@RequestBody SchTeacher schTeacher)
    {
        return toAjax(schTeacherService.updateSchTeacher(schTeacher));
    }

    /**
     * 删除教师管理
     */
    @PreAuthorize("@ss.hasPermi('school:teacher:remove')")
    @Log(title = "教师管理", businessType = BusinessType.DELETE)
	@DeleteMapping("/{teacherIds}")
    public AjaxResult remove(@PathVariable Long[] teacherIds)
    {
        return toAjax(schTeacherService.deleteSchTeacherByTeacherIds(teacherIds));
    }

    /**
     * 删除我的班级
     */
    @Log(title = "教师班级", businessType = BusinessType.DELETE)
    @PostMapping("/deleteTeacherBoundClasses")
    public AjaxResult deleteTeacherBoundClasses(@RequestBody Map<String,Object> objectMap)
    {
        return toAjax(schTeacherService.deleteSchTeacherClassByTeacherIds(objectMap));
    }


}
