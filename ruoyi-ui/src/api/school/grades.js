import request from '@/utils/request'

// 查询班级年级列表
export function listGrades(query) {
  return request({
    url: '/school/grades/list',
    method: 'get',
    params: query
  })
}

// 查询班级年级详细
export function getGrades(gradeId) {
  return request({
    url: '/school/grades/' + gradeId,
    method: 'get'
  })
}

// 新增班级年级
export function addGrades(data) {
  return request({
    url: '/school/grades',
    method: 'post',
    data: data
  })
}

// 修改班级年级
export function updateGrades(data) {
  return request({
    url: '/school/grades',
    method: 'put',
    data: data
  })
}

// 删除班级年级
export function delGrades(gradeId) {
  return request({
    url: '/school/grades/' + gradeId,
    method: 'delete'
  })
}
