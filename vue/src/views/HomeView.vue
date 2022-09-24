<template>
  <el-container style="height: 100vh;">
    <el-aside width="200px" style="background-color: rgb(238, 241, 246); height: 100%">
      <el-menu :default-openeds="['1']" :default-active="this.$router.path" style="height: 100%" background-color="#545c64"
               text-color="#fff"
               active-text-color="#ffd04b" router>
        <el-submenu index="1">
          <template slot="title"><i class="el-icon-menu"></i>勤怠管理</template>
          <el-menu-item-group>
            <template slot="title"></template>
            <el-menu-item index="/">
              ホーム
            </el-menu-item>
            <el-menu-item index="/details">
              詳細
            </el-menu-item>
            <el-menu-item index="/addrecord">
              登録
            </el-menu-item>
          </el-menu-item-group>
        </el-submenu>
      </el-menu>
    </el-aside>

    <el-container>
      <el-header style="font-size: 12px">
        <el-descriptions style="margin-top: 6px" title="" :column="3" border>
          <el-descriptions-item>
            <template slot="label">
              <i class="el-icon-user"></i>
              社員ID
            </template>
            <span>{{employee_info.employee_id}}</span>
          </el-descriptions-item>
          <el-descriptions-item>
            <template slot="label">
              <i class="el-icon-edit-outline"></i>
              氏名
            </template>
            <span>{{employee_info.employee_name}}</span>
          </el-descriptions-item>
          <el-descriptions-item>
            <template slot="label">
              <i class="el-icon-office-building"></i>
              所属部門
            </template>
            <span>{{employee_info.department_name}}</span>
          </el-descriptions-item>
        </el-descriptions>
      </el-header>

      <el-main>
        <div class="breadcrumb">
          <el-breadcrumb separator-class="el-icon-arrow-right">
            <el-breadcrumb-item :to="{ path: '/' }">ホーム</el-breadcrumb-item>
          </el-breadcrumb>
        </div>
        <div style="margin-top: 50px">
          <el-skeleton/>
        </div>
      </el-main>
    </el-container>
  </el-container>
</template>

<script>
// @ is an alias to /src

import AddRecordView from "@/views/AddRecordView";

export default {
  name: 'HomeView',

  data() {
    return {
      employee_info:{
        employee_id: '',
        employee_name: '',
        department_name: '',
      }
    }
  },
  created() {
    this.getEmployeeInfo(10002);
  },
  methods: {
  getEmployeeInfo(employeeID){
    this.$axios.get("http://localhost:8090/employees/"+employeeID).then((res)=>{
      console.log(res.data);
      this.employee_info.employee_id = res.data.data.employee_id;
      this.employee_info.employee_name = res.data.data.employee_name;
      this.employee_info.department_name = res.data.data.dept_name;
    }).catch(err => console.log(err));
  }
  }
}
</script>

<style>
.el-header {
  background-color: #B3C0D1;
  color: #333;
  line-height: 60px;
}

.el-aside {
  color: #333;
}
</style>
