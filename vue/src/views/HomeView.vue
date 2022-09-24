<template>
  <el-container style="height: 100vh;">
    <el-aside width="200px" style="background-color: rgb(238, 241, 246); height: 100%">
      <el-menu :router="true" :default-openeds="['1']" :default-active="this.$router.path" style="height: 100%"
               background-color="#545c64"
               text-color="#fff"
               active-text-color="#ffd04b" router>
        <el-submenu index="1">
          <template slot="title"><i class="el-icon-menu"></i>勤怠管理</template>
          <el-menu-item-group>
            <template slot="title"></template>
            <el-menu-item index="/" class="menuItem">
              <router-link :to="{name: 'home', params: {employee_id:this.employee_info.employee_id}}" class="menuLink">ホーム
              </router-link>
            </el-menu-item>
            <el-menu-item index="/details" class="menuItem">
              <router-link :to="{name: 'Details', params:{employee_id:this.employee_info.employee_id}}" class="menuLink">詳細
              </router-link>
            </el-menu-item>
            <el-menu-item index="/addrecord" class="menuItem">
              <router-link :to="{name: 'Addrecord', params:{employee_id:this.employee_info.employee_id}}" class="menuLink">登録
              </router-link>

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
            <span>{{ employee_info.employee_id }}</span>
          </el-descriptions-item>
          <el-descriptions-item>
            <template slot="label">
              <i class="el-icon-edit-outline"></i>
              氏名
            </template>
            <span>{{ employee_info.employee_name }}</span>
          </el-descriptions-item>
          <el-descriptions-item>
            <template slot="label">
              <i class="el-icon-office-building"></i>
              所属部門
            </template>
            <span>{{ employee_info.department_name }}</span>
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
      employee_info: {
        employee_id: '',
        employee_name: '',
        department_name: '',
      }
    }
  },
  created() {
    if (this.$route.params.employee_id != null){
      this.employee_info.employee_id = this.$route.params.employee_id;
    } else {
      this.employee_info.employee_id = 10001;
    }
    this.getEmployeeInfo(this.employee_info.employee_id);
  },
  methods: {
    getEmployeeInfo(employeeID) {
      this.$axios.get("http://localhost:8090/employees/" + employeeID).then((res) => {
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

.menuLink {
  width: 100%;
  display: block;
  height: 100%;
  text-decoration: none;
  color: white;
}

.menuItem {
  padding-right: 0 !important;
}
</style>
