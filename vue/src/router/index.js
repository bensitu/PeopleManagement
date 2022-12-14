import Vue from 'vue'
import VueRouter from 'vue-router'
import HomeView from '../views/HomeView.vue'
import LoginView from "@/views/LoginView";
import AddRecordView from "@/views/AddRecordView";
import DetailsView from "@/views/DetailsView";
import UpdateRecordView from "@/views/UpdateRecordView";

Vue.use(VueRouter)

const routes = [
  {
    path: '/',
    name: 'home',
    component: HomeView,
  },
  {
    path: '/login',
    name: 'Login',
    component: LoginView
  },
  {
    path: '/addrecord',
    name: 'Addrecord',
    component: AddRecordView,
  },
  {
    path: '/updaterecord/:record_id',
    name: 'Updaterecord',
    component: UpdateRecordView,
  },
  {
    path: '/details',
    name: 'Details',
    component: DetailsView,
  }
]

const router = new VueRouter({
  mode: 'history',
  base: process.env.BASE_URL,
  routes
})

export default router
