import request from '@/utils/request'

// 查询学生年级列表
export function listGrades(query) {
  return request({
    url: '/school/grades/list',
    method: 'get',
    params: query
  })
}

// 查询学生年级详细
export function getGrades(gradeId) {
  return request({
    url: '/school/grades/' + gradeId,
    method: 'get'
  })
}

// 新增学生年级
export function addGrades(data) {
  return request({
    url: '/school/grades',
    method: 'post',
    data: data
  })
}

// 修改学生年级
export function updateGrades(data) {
  return request({
    url: '/school/grades',
    method: 'put',
    data: data
  })
}

// 删除学生年级
export function delGrades(gradeId) {
  return request({
    url: '/school/grades/' + gradeId,
    method: 'delete'
  })
}
