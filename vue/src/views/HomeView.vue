<template>
    <el-container style="height: 100vh;">
      <el-aside width="200px" style="background-color: rgb(238, 241, 246); height: 100%">
        <el-menu :default-openeds="['1', '3']" style="height: 100%">
          <el-submenu index="1">
            <template slot="title"><i class="el-icon-message"></i>导航一</template>
            <el-menu-item-group>
              <template slot="title">分组一</template>
              <el-menu-item index="1-1">选项1</el-menu-item>
              <el-menu-item index="1-2">选项2</el-menu-item>
            </el-menu-item-group>
            <el-menu-item-group title="分组2">
              <el-menu-item index="1-3">选项3</el-menu-item>
            </el-menu-item-group>
            <el-submenu index="1-4">
              <template slot="title">选项4</template>
              <el-menu-item index="1-4-1">选项4-1</el-menu-item>
            </el-submenu>
          </el-submenu>
          <el-submenu index="2">
            <template slot="title"><i class="el-icon-menu"></i>导航二</template>
            <el-menu-item-group>
              <template slot="title">分组一</template>
              <el-menu-item index="2-1">选项1</el-menu-item>
              <el-menu-item index="2-2">选项2</el-menu-item>
            </el-menu-item-group>
            <el-menu-item-group title="分组2">
              <el-menu-item index="2-3">选项3</el-menu-item>
            </el-menu-item-group>
            <el-submenu index="2-4">
              <template slot="title">选项4</template>
              <el-menu-item index="2-4-1">选项4-1</el-menu-item>
            </el-submenu>
          </el-submenu>
          <el-submenu index="3">
            <template slot="title"><i class="el-icon-setting"></i>导航三</template>
            <el-menu-item-group>
              <template slot="title">分组一</template>
              <el-menu-item index="3-1">选项1</el-menu-item>
              <el-menu-item index="3-2">选项2</el-menu-item>
            </el-menu-item-group>
            <el-menu-item-group title="分组2">
              <el-menu-item index="3-3">选项3</el-menu-item>
            </el-menu-item-group>
            <el-submenu index="3-4">
              <template slot="title">选项4</template>
              <el-menu-item index="3-4-1">选项4-1</el-menu-item>
            </el-submenu>
          </el-submenu>
        </el-menu>
      </el-aside>

      <el-container>
        <el-header style="text-align: right; font-size: 12px">
          <el-dropdown>
            <i class="el-icon-setting" style="margin-right: 15px"></i>
            <el-dropdown-menu slot="dropdown">
              <el-dropdown-item>查看</el-dropdown-item>
              <el-dropdown-item>新增</el-dropdown-item>
              <el-dropdown-item>删除</el-dropdown-item>
            </el-dropdown-menu>
          </el-dropdown>
          <span>Tom</span>
        </el-header>

        <el-main>
          <div class="breadcrumb">
            <el-breadcrumb separator-class="el-icon-arrow-right">
            <el-breadcrumb-item :to="{ path: '/' }">Home</el-breadcrumb-item>
            <el-breadcrumb-item>Management</el-breadcrumb-item>
            <el-breadcrumb-item>List</el-breadcrumb-item>
            <el-breadcrumb-item>Details</el-breadcrumb-item>
          </el-breadcrumb>
          </div>
          <div class="functionNav mt-10">
            <div class="searchBox floatLeft">
              <div class="block">
                <el-date-picker
                    v-model="value1"
                    type="date"
                    placeholder="日付を選択してください">
                </el-date-picker>
                <el-button class="ml-5" type="primary" icon="el-icon-search">検索</el-button>
              </div>
            </div>
            <div class="goBack floatRight">
              <el-button class="ml-5" type="info">戻る</el-button>
            </div>
            <div class="newRecord floatRight">
              <el-button class="" type="success">新規作成<i class="el-icon-circle-plus-outline ml-5"></i></el-button>
            </div>

            <div class="cleanBoth">
            </div>
          </div>

          <el-table :data="tableData" stripe border>
            <el-table-column prop="date" label="日付" width="140">
            </el-table-column>
            <el-table-column prop="name" label="氏名" width="120">
            </el-table-column>
            <el-table-column prop="address" label="アドレス">
            </el-table-column>
            <el-table-column label="操作">
              <template slot-scope="scope">
                <el-button
                    size="mini"
                    type="warning"
                    @click="handleEdit(scope.$index, scope.row)">Edit<i class="el-icon-edit ml-5"></i></el-button>
                <el-button
                    size="mini"
                    type="danger"
                    @click="handleDelete(scope.$index, scope.row)">Delete<i class="el-icon-delete ml-5"></i></el-button>
              </template>
            </el-table-column>
          </el-table>
          <div>
            <div class="block mt-5">
              <el-pagination
                  @size-change="handleSizeChange"
                  @current-change="handleCurrentChange"
                  :current-page="currentPage4"
                  :page-sizes="[5, 10, 15, 20]"
                  :page-size="10"
                  layout="total, sizes, prev, pager, next, jumper"
                  :total="100">
              </el-pagination>
            </div>

          </div>
        </el-main>
      </el-container>
    </el-container>

</template>

<script>
// @ is an alias to /src
import HelloWorld from '@/components/HelloWorld.vue'

export default {
  name: 'HomeView',

  data(){
    const item = {
      date: '2022-05-02',
      name: '田中一郎',
      address: '東京都新宿区１丁目'
  };
    return {
    tableData: Array(15).fill(item),
      pickerOptions: {
        disabledDate(time) {
          return time.getTime() > Date.now();
        },
      },
      value1: '',
    }
  },
  methods: {
    handleEdit(index, row) {
      console.log(index, row);
    },
    handleDelete(index, row) {
      console.log(index, row);
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
