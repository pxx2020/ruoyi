import request from '@/utils/request'

// 查询学生信息列表
export function listStudent(query) {
  return request({
    url: '/school/student/list',
    method: 'get',
    params: query
  })
}

// 查询学生信息详细
export function getStudent(studentId) {
  return request({
    url: '/school/student/' + studentId,
    method: 'get'
  })
}

// 查询学生的老师
export function getStudentTeachers(query) {
  return request({
    url: '/school/student/getStudentTeachers',
    method: 'get',
    params: query
  })
}

// 新增学生信息
export function addStudent(data) {
  return request({
    url: '/school/student',
    method: 'post',
    data: data
  })
}

// 修改学生信息
export function updateStudent(data) {
  return request({
    url: '/school/student',
    method: 'put',
    data: data
  })
}

// 删除学生信息
export function delStudent(studentId) {
  return request({
    url: '/school/student/' + studentId,
    method: 'delete'
  })
}
