<template>
      <div class="common-layout">
          <el-container>
              <el-aside width="400px"></el-aside>
              <el-main>
                  <el-menu
                          class="el-menu-demo"
                          mode="horizontal"
                          background-color="#545c64"
                          text-color="#fff"
                          active-text-color="#ffd04b"
                          router
                          :default-active="$route.path"
                  >
                      <el-menu-item v-for="m in menu" :key="m.id" :index="m.path"  >{{ m.content }}</el-menu-item>
                  </el-menu>
                  <router-view></router-view>
              </el-main>
              <el-aside width="400px"></el-aside>
          </el-container>
      </div>
</template>

<script setup>
import {ref} from "vue";

const menu = ref([{id: 1, content: "首页", path: "/"},
    {id: 2, content: "电影史", path: "/history"},
    {id: 3, content: "电影库", path: "/movies"},
    {id: 4, content: "榜单", path: "/ranking"},])

</script>

<style scoped>
</style>
