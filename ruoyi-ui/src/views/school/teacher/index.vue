<template>
  <div class="app-container">
    <el-form :model="queryParams" ref="queryForm" size="small" :inline="true" v-show="showSearch" label-width="68px">
      <el-form-item label="老师姓名" prop="teacherName">
        <el-input v-model="queryParams.teacherName" placeholder="请输入老师姓名" clearable @keyup.enter.native="handleQuery" />
      </el-form-item>
      <el-form-item label="老师电话" prop="teacherPhone">
        <el-input v-model="queryParams.teacherPhone" placeholder="请输入老师电话" clearable @keyup.enter.native="handleQuery" />
      </el-form-item>
      <el-form-item>
        <el-button type="primary" icon="el-icon-search" size="mini" @click="handleQuery">搜索</el-button>
        <el-button icon="el-icon-refresh" size="mini" @click="resetQuery">重置</el-button>
      </el-form-item>
    </el-form>

    <el-row :gutter="10" class="mb8">
      <el-col :span="1.5">
        <el-button type="primary" plain icon="el-icon-plus" size="mini" @click="handleAdd"
          v-hasPermi="['school:teacher:add']">新增</el-button>
      </el-col>
      <el-col :span="1.5">
        <el-button type="success" plain icon="el-icon-edit" size="mini" :disabled="single" @click="handleUpdate"
          v-hasPermi="['school:teacher:edit']">修改</el-button>
      </el-col>
      <el-col :span="1.5">
        <el-button type="danger" plain icon="el-icon-delete" size="mini" :disabled="multiple" @click="handleDelete"
          v-hasPermi="['school:teacher:remove']">删除</el-button>
      </el-col>
      <el-col :span="1.5">
        <el-button type="warning" plain icon="el-icon-download" size="mini" @click="handleExport"
          v-hasPermi="['school:teacher:export']">导出</el-button>
      </el-col>
      <right-toolbar :showSearch.sync="showSearch" @queryTable="getList"></right-toolbar>
    </el-row>

    <el-table v-loading="loading" :data="teacherList" @selection-change="handleSelectionChange">
      <el-table-column type="selection" width="55" align="center" />
      <el-table-column label="老师ID" align="center" prop="teacherId" />
      <el-table-column label="老师姓名" align="center" prop="teacherName" />
      <el-table-column label="老师电话" align="center" prop="teacherPhone" />
      <el-table-column label="备注" align="center" prop="remark" />
      <el-table-column label="操作" align="center" class-name="small-padding fixed-width">
        <template slot-scope="scope">
          <el-button size="mini" type="text" icon="el-icon-edit" @click="handleClasses(scope.row)">我的班级</el-button>
          <el-button size="mini" type="text" icon="el-icon-edit" @click="handleUpdate(scope.row)"
            v-hasPermi="['school:teacher:edit']">修改</el-button>
          <el-button size="mini" type="text" icon="el-icon-delete" @click="handleDelete(scope.row)"
            v-hasPermi="['school:teacher:remove']">删除</el-button>
        </template>
      </el-table-column>
    </el-table>


    <pagination v-show="total > 0" :total="total" :page.sync="queryParams.pageNum" :limit.sync="queryParams.pageSize"
      @pagination="getList" />

    <!-- 添加或修改教师管理对话框 -->
    <el-dialog :title="title" :visible.sync="open" width="500px" append-to-body>
      <el-form ref="form" :model="form" :rules="rules" label-width="80px">
        <el-form-item label="老师姓名" prop="teacherName">
          <el-input v-model="form.teacherName" placeholder="请输入老师姓名" />
        </el-form-item>
        <el-form-item label="老师电话" prop="teacherPhone">
          <el-input v-model="form.teacherPhone" placeholder="请输入老师电话" />
        </el-form-item>
        <el-form-item label="备注" prop="remark">
          <el-input v-model="form.remark" type="textarea" placeholder="请输入内容" />
        </el-form-item>
      </el-form>
      <div slot="footer" class="dialog-footer">
        <el-button type="primary" @click="submitForm">确 定</el-button>
        <el-button @click="cancel">取 消</el-button>
      </div>
    </el-dialog>

    <!-- 添加或修改教师管理对话框 -->
    <el-dialog title="我的班级" :visible.sync="openBoundClasses" width="800px">

      <el-row :gutter="10" class="mb8">
        <el-col :span="1.5">
          <el-button type="primary" plain icon="el-icon-plus" size="mini" @click="handleClassAdd">添加班级</el-button>
        </el-col>
        <el-col :span="1.5">
          <el-button type="danger" plain icon="el-icon-delete" size="mini" :disabled="multipleClass"
            @click="handleClassDelete">批量移除</el-button>
        </el-col>
      </el-row>
      <el-table v-loading="loadingBoundClasses" :data="classesBoundList" @selection-change="handleClassesSelectionChange">
        <el-table-column type="selection" width="55" align="center" />
        <el-table-column label="班级名称" align="center" prop="className" />
        <el-table-column label="操作" align="center" class-name="small-padding fixed-width">
          <template slot-scope="scope">
            <el-button size="mini" type="text" icon="el-icon-delete" @click="handleClassDelete(scope.row)">移除</el-button>
          </template>
        </el-table-column>
      </el-table>
      <pagination v-show="totalBound > 0" :total="totalBound" :page.sync="queryParamsBound.pageNum"
        :limit.sync="queryParamsBound.pageSize" @pagination="getBoundClassList" />
      <div slot="footer" class="dialog-footer">
        <el-button type="primary" @click="openBoundClasses = false">关 闭</el-button>
      </div>
      <el-dialog width="500px" title="添加班级" :visible.sync="openUnBoundClasses" append-to-body>
        <el-table v-loading="loadingUnBoundClasses" :data="classesUnBoundList"
          @selection-change="handleAddClassesSelectionChange">
          <el-table-column type="selection" width="55" align="center" />
          <el-table-column label="班级名称" align="center" prop="className" />
        </el-table>
        <pagination v-show="totalUnBound > 0" :total="totalUnBound" :page.sync="queryParamsUnBound.pageNum"
          :limit.sync="queryParamsUnBound.pageSize" @pagination="getUnBoundClassList" />
        <div slot="footer" class="dialog-footer">
          <el-button type="primary" @click="handleTeacherAddClass">确 定</el-button>
          <el-button @click="openUnBoundClasses = false">取 消</el-button>
        </div>
      </el-dialog>
    </el-dialog>
  </div>
</template>

<script>
import { listTeacher, getTeacher, delTeacher, addTeacher, updateTeacher, getTeacherBoundClasses, getTeacherUnBoundClasses, delTeacherBoundClasses, addTeacherBoundClass } from "@/api/school/teacher";

export default {
  name: "Teacher",
  data() {
    return {
      // 遮罩层
      loading: true,
      // 遮罩层（已绑定的班级）
      loadingBoundClasses: true,
      // 遮罩层（未绑定的班级）
      loadingUnBoundClasses: true,
      // 选中数组
      ids: [],
      // 选中数组（我的班级）
      cids: [],
      // 选中数组（添加班级）
      cdids: [],
      // 非单个禁用
      single: true,
      // 非多个禁用
      multiple: true,
      // 非多个禁用（我的班级）
      multipleClass: true,
      // 显示搜索条件
      showSearch: true,
      // 总条数
      total: 0,
      // 总条数（绑定的班级）
      totalBound: 0,
      // 总条数（未绑定的班级）
      totalUnBound: 0,
      // 教师管理表格数据
      teacherList: [],
      // 老师已经绑定的班级列表
      classesBoundList: [],
      // 老师未绑定的班级列表
      classesUnBoundList: [],
      // 弹出层标题
      title: "",
      // 是否显示弹出层
      open: false,
      //是否显示弹出层（已绑定的班级）
      openBoundClasses: false,
      //是否显示弹出层（未绑定的班级）
      openUnBoundClasses: false,
      // 查询参数
      queryParams: {
        pageNum: 1,
        pageSize: 10,
        teacherName: null,
        teacherPhone: null,
      },
      // 查询参数（绑定的班级）
      queryParamsBound: {
        pageNum: 1,
        pageSize: 10,
      },
      // 查询参数（未绑定的班级）
      queryParamsUnBound: {
        pageNum: 1,
        pageSize: 10,
      },
      // 表单参数
      form: {},
      // 表单校验
      rules: {
        teacherName: [
          { required: true, message: "老师姓名不能为空", trigger: "blur" }
        ],
      },
      teacherId: null,//点击我的班级按钮记录教师ID
    }

  },
  created() {
    this.getList();
  },
  methods: {

    //查询老师已经绑定的班级
    getBoundClassList() {
      this.loadingBoundClasses = true;
      getTeacherBoundClasses({
        ...this.queryParamsBound,
        teacherId: this.teacherId
      }).then(response => {
        this.classesBoundList = response.rows;
        this.totalBound = response.total;
        this.loadingBoundClasses = false;
      })
    },

    //查询老师未绑定的班级
    getUnBoundClassList() {
      this.loadingUnBoundClasses = true;
      getTeacherUnBoundClasses({
        ...this.queryParamsUnBound,
        teacherId: this.teacherId
      }).then(response => {
        this.classesUnBoundList = response.rows;
        this.totalUnBound = response.total;
        this.loadingUnBoundClasses = false;
      })
    },

    //我的班级（按钮）
    handleClasses(row) {
      this.teacherId = row.teacherId;
      this.queryParamsBound.pageNum = 1;
      this.openBoundClasses = true;
      this.getBoundClassList();//查询老师已经绑定的班级
    },

    /** 查询教师管理列表 */
    getList() {
      this.loading = true;
      listTeacher(this.queryParams).then(response => {
        this.teacherList = response.rows;
        this.total = response.total;
        this.loading = false;
      });
    },
    // 取消按钮
    cancel() {
      this.open = false;
      this.reset();
    },
    // 表单重置
    reset() {
      this.form = {
        teacherId: null,
        teacherName: null,
        teacherPhone: null,
        createBy: null,
        createTime: null,
        updateBy: null,
        updateTime: null,
        remark: null
      };
      this.resetForm("form");
    },
    /** 搜索按钮操作 */
    handleQuery() {
      this.queryParams.pageNum = 1;
      this.getList();
    },
    /** 重置按钮操作 */
    resetQuery() {
      this.resetForm("queryForm");
      this.handleQuery();
    },

    // 多选框选中数据
    handleSelectionChange(selection) {
      this.ids = selection.map(item => item.teacherId)
      this.single = selection.length !== 1
      this.multiple = !selection.length
    },

    // 多选框选中数据（我的班级） 
    handleClassesSelectionChange(selection) {
      this.cids = selection.map(item => item.classId)
      this.multipleClass = !selection.length
    },

    // 多选框选中数据（添加班级） 
    handleAddClassesSelectionChange(selection) {
      this.cdids = selection.map(item => item.classId);
    },

    /** 新增按钮操作 */
    handleAdd() {
      this.reset();
      this.open = true;
      this.title = "添加教师管理";
    },

    /** 新增按钮操作（添加班级） */
    handleClassAdd() {
      this.queryParamsUnBound.pageNum = 1;
      this.openUnBoundClasses = true;
      this.getUnBoundClassList();
    },

    /** 教师添加班级 */
    handleTeacherAddClass() {
      const classIds = this.cdids;
      const teacherId = this.teacherId
      addTeacherBoundClass({ classIds, teacherId }).then(() => {
        this.openUnBoundClasses = false;
        this.$modal.msgSuccess("添加成功");
        this.getBoundClassList()
      })
    },

    /** 修改按钮操作 */
    handleUpdate(row) {
      this.reset();
      const teacherId = row.teacherId || this.ids
      getTeacher(teacherId).then(response => {
        this.form = response.data;
        this.open = true;
        this.title = "修改教师管理";
      });
    },
    /** 提交按钮 */
    submitForm() {
      this.$refs["form"].validate(valid => {
        if (valid) {
          if (this.form.teacherId != null) {
            updateTeacher(this.form).then(response => {
              this.$modal.msgSuccess("修改成功");
              this.open = false;
              this.getList();
            });
          } else {
            addTeacher(this.form).then(response => {
              this.$modal.msgSuccess("新增成功");
              this.open = false;
              this.getList();
            });
          }
        }
      });
    },
    /** 删除按钮操作 */
    handleDelete(row) {
      const teacherIds = row.teacherId || this.ids;
      this.$modal.confirm('是否确认删除教师管理编号为"' + teacherIds + '"的数据项？').then(function () {
        return delTeacher(teacherIds);
      }).then(() => {
        this.getList();
        this.$modal.msgSuccess("删除成功");
      }).catch(() => { });
    },

    /** 删除按钮操作（我的班级） */
    handleClassDelete(row) {
      const classIds = row.classId ? [row.classId] : this.cids;
      const teacherId = row.teacherId || this.teacherId
      this.$modal.confirm('是否确认删除我的班级编号为"' + classIds + '"的数据项？').then(function () {
        return delTeacherBoundClasses({ classIds, teacherId });
      }).then(() => {
        this.getBoundClassList();
        this.$modal.msgSuccess("删除成功");
      }).catch(() => { });
    },

    /** 导出按钮操作 */
    handleExport() {
      this.download('school/teacher/export', {
        ...this.queryParams
      }, `teacher_${new Date().getTime()}.xlsx`)
    }
  }
};
</script>
