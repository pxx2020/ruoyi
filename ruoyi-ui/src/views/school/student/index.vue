<template>
  <div class="app-container">
    <el-form :model="queryParams" ref="queryForm" size="small" :inline="true" v-show="showSearch" label-width="68px">
      <el-form-item label="学生姓名" prop="studentName">
        <el-input v-model="queryParams.studentName" placeholder="请输入学生姓名" clearable @keyup.enter.native="handleQuery" />
      </el-form-item>
      <el-form-item label="学生性别" prop="studentSex">
        <el-select v-model="queryParams.studentSex" placeholder="请选择学生性别" clearable>
          <el-option v-for="dict in dict.type.sys_user_sex" :key="dict.value" :label="dict.label" :value="dict.value" />
        </el-select>
      </el-form-item>
      <el-form-item label="出生日期" prop="studentBirthday">
        <el-date-picker clearable v-model="queryParams.studentBirthday" type="date" value-format="yyyy-MM-dd"
          placeholder="请选择出生日期">
        </el-date-picker>
      </el-form-item>
      <el-form-item label="联系电话" prop="studentPhone">
        <el-input v-model="queryParams.studentPhone" placeholder="请输入联系电话" clearable @keyup.enter.native="handleQuery" />
      </el-form-item>
      <el-form-item label="联系地址" prop="studentAddress">
        <el-input v-model="queryParams.studentAddress" placeholder="请输入联系地址" clearable
          @keyup.enter.native="handleQuery" />
      </el-form-item>
      <el-form-item label="班级" prop="classId">
        <el-select v-model="queryParams.classId" placeholder="选择班级">
          <el-option v-for="item in classesList" :key="item.classId" :label="item.className"
            :value="item.classId"></el-option>
        </el-select>
      </el-form-item>
      <el-form-item label="年级" prop="gradeId">
        <el-select v-model="queryParams.gradeId" placeholder="选择年级">
          <el-option v-for="item in gradesList" :key="item.gradeId" :label="item.gradeName"
            :value="item.gradeId"></el-option>
        </el-select>
      </el-form-item>
      <el-form-item>
        <el-button type="primary" icon="el-icon-search" size="mini" @click="handleQuery">搜索</el-button>
        <el-button icon="el-icon-refresh" size="mini" @click="resetQuery">重置</el-button>
      </el-form-item>
    </el-form>

    <el-row :gutter="10" class="mb8">
      <el-col :span="1.5">
        <el-button type="primary" plain icon="el-icon-plus" size="mini" @click="handleAdd"
          v-hasPermi="['school:student:add']">新增</el-button>
      </el-col>
      <el-col :span="1.5">
        <el-button type="success" plain icon="el-icon-edit" size="mini" :disabled="single" @click="handleUpdate"
          v-hasPermi="['school:student:edit']">修改</el-button>
      </el-col>
      <el-col :span="1.5">
        <el-button type="danger" plain icon="el-icon-delete" size="mini" :disabled="multiple" @click="handleDelete"
          v-hasPermi="['school:student:remove']">删除</el-button>
      </el-col>
      <el-col :span="1.5">
        <el-button type="warning" plain icon="el-icon-download" size="mini" @click="handleExport"
          v-hasPermi="['school:student:export']">导出</el-button>
      </el-col>
      <right-toolbar :showSearch.sync="showSearch" @queryTable="getList"></right-toolbar>
    </el-row>

    <el-table v-loading="loading" :data="studentList" @selection-change="handleSelectionChange">
      <el-table-column type="selection" width="55" align="center" />
      <el-table-column label="学生ID" align="center" prop="studentId" />
      <el-table-column label="学生姓名" align="center" prop="studentName" />
      <el-table-column label="学生性别" align="center" prop="studentSex">
        <template slot-scope="scope">
          <dict-tag :options="dict.type.sys_user_sex" :value="scope.row.studentSex" />
        </template>
      </el-table-column>
      <el-table-column label="出生日期" align="center" prop="studentBirthday" width="180">
        <template slot-scope="scope">
          <span>{{ parseTime(scope.row.studentBirthday, '{y}-{m}-{d}') }}</span>
        </template>
      </el-table-column>
      <el-table-column label="联系电话" align="center" prop="studentPhone" />
      <el-table-column label="联系地址" align="center" prop="studentAddress" />
      <el-table-column label="班级" align="center">
        <template slot-scope="scope">
          {{ scope.row.schClassVo && scope.row.schClassVo.className }}
        </template>
      </el-table-column>
      <el-table-column label="年级" align="center">
        <template slot-scope="scope">
          {{ scope.row.schClassVo && scope.row.schClassVo.schGrades && scope.row.schClassVo.schGrades.gradeName }}
        </template>
      </el-table-column>
      <el-table-column label="备注" align="center" prop="remark" />
      <el-table-column label="操作" align="center" class-name="small-padding fixed-width">
        <template slot-scope="scope">
          <el-button size="mini" type="text" icon="el-icon-edit" @click="handleTeachers(scope.row)">我的老师</el-button>
          <el-button size="mini" type="text" icon="el-icon-edit" @click="handleUpdate(scope.row)"
            v-hasPermi="['school:student:edit']">修改</el-button>
          <el-button size="mini" type="text" icon="el-icon-delete" @click="handleDelete(scope.row)"
            v-hasPermi="['school:student:remove']">删除</el-button>
        </template>
      </el-table-column>
    </el-table>

    <pagination v-show="total > 0" :total="total" :page.sync="queryParams.pageNum" :limit.sync="queryParams.pageSize"
      @pagination="getList" />

    <!-- 添加或修改学生信息对话框 -->
    <el-dialog :title="title" :visible.sync="open" width="500px" append-to-body>
      <el-form ref="form" :model="form" :rules="rules" label-width="80px">
        <el-form-item label="学生姓名" prop="studentName">
          <el-input v-model="form.studentName" placeholder="请输入学生姓名" />
        </el-form-item>
        <el-form-item label="学生性别" prop="studentSex">
          <el-select v-model="form.studentSex" placeholder="请选择学生性别">
            <el-option v-for="dict in dict.type.sys_user_sex" :key="dict.value" :label="dict.label"
              :value="dict.value"></el-option>
          </el-select>
        </el-form-item>
        <el-form-item label="出生日期" prop="studentBirthday">
          <el-date-picker clearable v-model="form.studentBirthday" type="date" value-format="yyyy-MM-dd"
            placeholder="请选择出生日期">
          </el-date-picker>
        </el-form-item>
        <el-form-item label="联系电话" prop="studentPhone">
          <el-input v-model="form.studentPhone" placeholder="请输入联系电话" />
        </el-form-item>
        <el-form-item label="联系地址" prop="studentAddress">
          <el-input v-model="form.studentAddress" placeholder="请输入联系地址" />
        </el-form-item>
        <el-form-item label="所在班级" prop="classId">
          <!-- <el-input v-model="form.classId" placeholder="请输入所在班级" /> -->
          <el-select v-model="form.classId" placeholder="选择班级">
            <el-option v-for="item in classesList" :key="item.classId" :label="item.className"
              :value="item.classId"></el-option>
          </el-select>
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

    <el-dialog title="我的老师" :visible.sync="openTeachers" width="500px" >
      <el-table v-loading="loadingTeachers" :data="teacherList" >
      <el-table-column label="老师姓名" align="center" prop="teacherName" />
      <el-table-column label="老师电话" align="center" prop="teacherPhone" />
    </el-table>
    <div slot="footer" class="dialog-footer">
        <el-button type="primary" @click="openTeachers = false">关 闭</el-button>
      </div>
    </el-dialog>
   
  </div>
</template>

<script>
import { listStudent, getStudent, delStudent, addStudent, updateStudent,getStudentTeachers } from "@/api/school/student";
import { listClasses } from "@/api/school/classes";
import { listGrades } from "@/api/school/grades";
export default {
  name: "Student",
  dicts: ['sys_user_sex'],
  data() {
    return {
      // 遮罩层
      loading: true,
      // 遮罩层（我的老师）
      loadingTeachers:true,
      // 选中数组
      ids: [],
      // 非单个禁用
      single: true,
      // 非多个禁用
      multiple: true,
      // 显示搜索条件
      showSearch: true,
      // 总条数
      total: 0,
      // 学生信息表格数据
      studentList: [],
      //班级列表
      classesList: [],
      //老师列表
      teacherList: [],
      //年级列表
      gradesList: [],
      // 弹出层标题
      title: "",
      // 是否显示弹出层
      open: false,
      // 是否显示弹出层（我的老师）
      openTeachers:false,
      // 查询参数
      queryParams: {
        pageNum: 1,
        pageSize: 10,
        studentName: null,
        studentSex: null,
        studentBirthday: null,
        studentPhone: null,
        studentAddress: null,
        classId: null,
        gradeId: null
      },
      // 表单参数
      form: {},
      // 表单校验
      rules: {
        studentName: [
          { required: true, message: "学生姓名不能为空", trigger: "blur" }
        ],
        classId: [
          { required: true, message: "请选择班级", trigger: "change" }
        ],
      }
    };
  },
  created() {
    this.getList();
    listClasses({ pageNum: 1, pageSize: 999 }).then(response => {
      this.classesList = response.rows;
    });
    listGrades({ pageNum: 1, pageSize: 999 }).then(response => {
      this.gradesList = response.rows;
    });
  },
  methods: {
    /** 查询学生信息列表 */
    getList() {
      this.loading = true;
      listStudent(this.queryParams).then(response => {
        this.studentList = response.rows;
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
        studentId: null,
        studentName: null,
        studentSex: null,
        studentBirthday: null,
        studentPhone: null,
        studentAddress: null,
        classId: null,
        gradeId: null,
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
      this.ids = selection.map(item => item.studentId)
      this.single = selection.length !== 1
      this.multiple = !selection.length
    },
    /** 新增按钮操作 */
    handleAdd() {
      this.reset();
      this.open = true;
      this.title = "添加学生信息";
    },
    /** 修改按钮操作 */
    handleUpdate(row) {
      this.reset();
      const studentId = row.studentId || this.ids
      getStudent(studentId).then(response => {
        this.form = response.data;
        this.open = true;
        this.title = "修改学生信息";
      });
    },

    /** 我的老师 */
    handleTeachers(row){
      this.loadingTeachers = true;
      getStudentTeachers({
        pageNum: 1,
        pageSize: 999,
        studentId:row.studentId
      }).then(response=>{
        this.openTeachers = true;
        this.teacherList = response.rows;
        this.loadingTeachers = false;
      })
    },

    /** 提交按钮 */
    submitForm() {
      this.$refs["form"].validate(valid => {
        if (valid) {
          if (this.form.studentId != null) {
            updateStudent(this.form).then(response => {
              this.$modal.msgSuccess("修改成功");
              this.open = false;
              this.getList();
            });
          } else {
            addStudent(this.form).then(response => {
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
      const studentIds = row.studentId || this.ids;
      this.$modal.confirm('是否确认删除学生信息编号为"' + studentIds + '"的数据项？').then(function () {
        return delStudent(studentIds);
      }).then(() => {
        this.getList();
        this.$modal.msgSuccess("删除成功");
      }).catch(() => { });
    },
    /** 导出按钮操作 */
    handleExport() {
      this.download('school/student/export', {
        ...this.queryParams
      }, `student_${new Date().getTime()}.xlsx`)
    }
  }
};
</script>
