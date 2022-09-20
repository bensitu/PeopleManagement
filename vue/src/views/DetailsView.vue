<template>
    <el-container style="height: 100vh;">
      <el-aside width="200px" style="background-color: rgb(238, 241, 246); height: 100%">
        <el-menu :default-openeds="['1']" :default-active="this.$router.path" style="height: 100%" background-color="#545c64" text-color="#fff"
                 active-text-color="#ffd04b" router>
          <el-submenu index="1">
            <template slot="title"><i class="el-icon-menu"></i>勤怠管理</template>
            <el-menu-item-group>
              <el-menu-item index="/">ホーム</el-menu-item>
              <el-menu-item index="/details">詳細</el-menu-item>
              <el-menu-item index="addrecord">登録</el-menu-item>
            </el-menu-item-group>
          </el-submenu>
        </el-menu>
      </el-aside>

      <el-container>
        <el-header style="font-size: 12px">
          <div style="text-align: right;">
            <el-dropdown>
              <i class="el-icon-setting" style="margin-right: 15px"></i>
              <el-dropdown-menu slot="dropdown">
                <el-dropdown-item>View</el-dropdown-item>
                <el-dropdown-item>Add</el-dropdown-item>
                <el-dropdown-item>Delete</el-dropdown-item>
              </el-dropdown-menu>
            </el-dropdown>
            <span>Ben</span>
          </div>
        </el-header>

        <el-main>
          <div class="breadcrumb">
            <el-breadcrumb separator-class="el-icon-arrow-right">
              <el-breadcrumb-item :to="{ path: '/' }">ホーム</el-breadcrumb-item>
              <el-breadcrumb-item>詳細</el-breadcrumb-item>
              <el-breadcrumb-item>登録</el-breadcrumb-item>
            </el-breadcrumb>
          </div>
          <div class="functionNav mt-10">
            <div class="searchBox floatLeft">
              <div class="block">
                <el-date-picker
                    v-model="search_date"
                    type="date"
                    placeholder="日付を選択してください">
                </el-date-picker>
                <el-button class="ml-5" type="primary" icon="el-icon-search">検索</el-button>
              </div>
            </div>
            <div class="goBack floatRight">
              <el-button class="ml-5" type="info" @click="handleBack()">戻る</el-button>
            </div>
            <div class="newRecord floatRight">
              <el-button class="" type="success" @click="handleCreate()">新規作成<i class="el-icon-circle-plus-outline ml-5"></i></el-button>
            </div>
            <div class="cleanBoth">
            </div>
          </div>

          <el-table :data="dataList" stripe border>
            <el-table-column prop="record_id" align="center" label="記録番号"></el-table-column>
            <el-table-column prop="attendance_date" align="center" label="日付">
            </el-table-column>
            <el-table-column prop="start_time" align="center" label="出勤時間">
            </el-table-column>
            <el-table-column prop="end_time" align="center" label="退勤時間">
            </el-table-column>
            <el-table-column prop="rest_hours" align="center" label="休憩時間">
            </el-table-column>
            <el-table-column prop="working_hours" align="center" label="作業時間">
            </el-table-column>
            <el-table-column prop="overtime_hours" align="center" label="残業時間">
            </el-table-column>
            <el-table-column prop="absence_hours" align="center" label="欠勤時間">
            </el-table-column>
            <el-table-column prop="working_details" align="center" label="作業内容">
            </el-table-column>
            <el-table-column align="center" label="操作">
              <template slot-scope="scope">
                <el-button
                    size="mini"
                    type="warning"
                    @click="handleEdit(scope.$index, scope.row)">更新<i class="el-icon-edit ml-5"></i></el-button><br>
                <el-button
                    size="mini"
                    type="danger"
                    @click="handleDelete(scope.$index, scope.row)" class="mt-5">削除<i class="el-icon-delete ml-5"></i></el-button>
              </template>
            </el-table-column>
          </el-table>
          <div class="pagination-container">
            <div class="block mt-5">
              <el-pagination
                  class="pagination"
                  @current-change="handleCurrentChange"
                  :current-page="pagination.currentPage"
                  :page-size="pagination.pageSize"
                  small
                  layout="total, prev, pager, next"
                  :total="pagination.total">
              </el-pagination>
            </div>
          </div>
        </el-main>
      </el-container>
    </el-container>
</template>

<script>
// @ is an alias to /src


export default {
  name: 'DetailsView',

  data(){
    return {
      search_date: '',
      dataList:[],
      record_id: '',
      attendance_date: '',
      start_time: '',
      end_time: '',
      rest_hours: '',
      working_hours: '',
      overtime_hours: '',
      absence_hours: '',
      working_details: '',
      pickerOptions: {
        disabledDate(time) {
          return time.getTime() > Date.now();
        },
      },
      pagination:{
        currentPage: 1,
        pageSize: 10,
        total: 0
      }
    }
  },
  created() {
    this.getAll();

  },
  methods: {
    getAll(){
      this.$axios.get("http://localhost:8090/attendances").then((res)=>{
        this.dataList = res.data.data;
      }).catch(err => console.log(err));
    },
    getPages(){
      this.$axios.get("/attendances/"+this.pagination.currentPage+"/"+this.pagination.pageSize).then((res)=>{
        this.pagination.pageSize = res.data.data.size;
        this.pagination.currentPage = res.data.data.current;
        this.pagination.total = res.data.data.total;
        console.log(res.data);
        this.dataList = res.data.data;
      })
    },
    handleCurrentChange(currentPage){

    },
    getInfoByRecordId(){
      this.$axios.get("/attendances/details/"+row.record_id).then((res)=>{
        if (res.data.flag){

        }
      })
    },
    handleEdit(index, row) {
      console.log(index, row);
      this.$router.push({
        name:'Updaterecord',
        params: {
          record_id: row.record_id
        }
      })
      // this.$axois.get("/attendances/"+row.record_id).then((res)=>{
      //   this.dataList = res.data.data;
      // })
    },
    handleDelete(index, row) {
      console.log(index, row);
      this.$confirm("削除は確認しましたか","メッセージ",{type:"info"}).then(()=>{


        this.$axios.put("/attendances/details/"+row.record_id).then((res)=>{
          if (res.data.flag){
            res.data.data.rec_del_flg = 1;
            this.$message.success("削除しました");
          } else {
            this.$message.error("削除できません");
          }
        }).finally(()=>{
          this.getAll();
        })
      }).catch(()=>{
        this.$message.error("キャンセルしました");
      })

    },
    handleCreate(){
      this.$router.push({
        name: 'Addrecord'
      })
    },
    handleBack(){
      this.$router.push({
        name: 'home'
      })
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

.searchBox {
  margin:10px 0;
}
</style>
