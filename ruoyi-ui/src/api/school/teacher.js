import request from '@/utils/request'

// 查询教师管理列表
export function listTeacher(query) {
  return request({
    url: '/school/teacher/list',
    method: 'get',
    params: query
  })
}

// 查询教师已绑定的班级列表
export function getTeacherBoundClasses(teacherId) {
  return request({
    url: '/school/teacher/getTeacherBoundClasses/' + teacherId,
    method: 'get'
  })
}

// 查询教师已绑定的班级列表
export function getTeacherUnboundClasses(teacherId) {
  return request({
    url: '/school/teacher/getTeacherUnboundClasses/' + teacherId,
    method: 'get'
  })
}

// 查询教师管理详细
export function getTeacher(teacherId) {
  return request({
    url: '/school/teacher/' + teacherId,
    method: 'get'
  })
}

// 新增教师管理
export function addTeacher(data) {
  return request({
    url: '/school/teacher',
    method: 'post',
    data: data
  })
}

// 修改教师管理
export function updateTeacher(data) {
  return request({
    url: '/school/teacher',
    method: 'put',
    data: data
  })
}

// 删除教师管理
export function delTeacher(teacherId) {
  return request({
    url: '/school/teacher/' + teacherId,
    method: 'delete'
  })
}

