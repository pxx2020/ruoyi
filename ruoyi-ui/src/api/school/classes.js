import request from '@/utils/request'

// 查询学生班级列表
export function listClasses(query) {
  return request({
    url: '/school/classes/list',
    method: 'get',
    params: query
  })
}

// 查询学生班级详细
export function getClasses(classId) {
  return request({
    url: '/school/classes/' + classId,
    method: 'get'
  })
}

// 新增学生班级
export function addClasses(data) {
  return request({
    url: '/school/classes',
    method: 'post',
    data: data
  })
}

// 修改学生班级
export function updateClasses(data) {
  return request({
    url: '/school/classes',
    method: 'put',
    data: data
  })
}

// 删除学生班级
export function delClasses(classId) {
  return request({
    url: '/school/classes/' + classId,
    method: 'delete'
  })
}
