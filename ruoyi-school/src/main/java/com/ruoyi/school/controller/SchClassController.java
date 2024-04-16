package com.ruoyi.school.controller;

import java.util.List;
import javax.servlet.http.HttpServletResponse;

import com.ruoyi.school.domain.vo.SchClassVo;
import lombok.extern.slf4j.Slf4j;
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
import com.ruoyi.school.domain.SchClass;
import com.ruoyi.school.service.ISchClassService;
import com.ruoyi.common.utils.poi.ExcelUtil;
import com.ruoyi.common.core.page.TableDataInfo;

/**
 * 学生班级Controller
 * 
 * @author ruoyi
 * @date 2023-08-14
 */
@Slf4j
@RestController
@RequestMapping("/school/classes")
public class SchClassController extends BaseController
{
    @Autowired
    private ISchClassService schClassService;

    /**
     * 查询学生班级列表
     */
    @PreAuthorize("@ss.hasPermi('school:classes:list')")
    @GetMapping("/list")
    public TableDataInfo list(SchClass schClass)
    {
        startPage();
        log.debug("log.debug-----查询学生班级列表");
        log.info("log.info-----查询学生班级列表");
        log.error("log.error-----查询学生班级列表");
        log.warn("log.warn-----查询学生班级列表");
        System.out.println("System.out.println-----查询学生班级列表");
        System.err.println("System.err.println-----查询学生班级列表");
        List<SchClassVo> list = schClassService.selectSchClassList(schClass);
        return getDataTable(list);
    }

    /**
     * 导出学生班级列表
     */
    @PreAuthorize("@ss.hasPermi('school:classes:export')")
    @Log(title = "学生班级", businessType = BusinessType.EXPORT)
    @PostMapping("/export")
    public void export(HttpServletResponse response, SchClass schClass)
    {
        List<SchClassVo> list = schClassService.selectSchClassList(schClass);
        ExcelUtil<SchClassVo> util = new ExcelUtil<SchClassVo>(SchClassVo.class);
        util.exportExcel(response, list, "学生班级数据");
    }

    /**
     * 获取学生班级详细信息
     */
    @PreAuthorize("@ss.hasPermi('school:classes:query')")
    @GetMapping(value = "/{classId}")
    public AjaxResult getInfo(@PathVariable("classId") Long classId)
    {
        return success(schClassService.selectSchClassByClassId(classId));
    }

    /**
     * 新增学生班级
     */
    @PreAuthorize("@ss.hasPermi('school:classes:add')")
    @Log(title = "学生班级", businessType = BusinessType.INSERT)
    @PostMapping
    public AjaxResult add(@RequestBody SchClass schClass)
    {
        return toAjax(schClassService.insertSchClass(schClass));
    }

    /**
     * 修改学生班级
     */
    @PreAuthorize("@ss.hasPermi('school:classes:edit')")
    @Log(title = "学生班级", businessType = BusinessType.UPDATE)
    @PutMapping
    public AjaxResult edit(@RequestBody SchClass schClass)
    {
        return toAjax(schClassService.updateSchClass(schClass));
    }

    /**
     * 删除学生班级
     */
    @PreAuthorize("@ss.hasPermi('school:classes:remove')")
    @Log(title = "学生班级", businessType = BusinessType.DELETE)
	@DeleteMapping("/{classIds}")
    public AjaxResult remove(@PathVariable Long[] classIds)
    {
        return toAjax(schClassService.deleteSchClassByClassIds(classIds));
    }
}
