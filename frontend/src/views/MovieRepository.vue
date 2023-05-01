<template>
    <el-row>
        <div>电影名称：</div>
        <el-input></el-input>
        <el-button>查询</el-button>
    </el-row>

    <el-row >
        <el-col v-if="movies" :span="8" v-for="movie in movies " :key="movie.id">
            <el-card>
                <div style="padding: 14px">
                    <span>{{ movie.chineseName}}</span>
                </div>
                <div style="padding: 14px">
                    <span>{{ movie.director.chineseName}}</span>
                </div>
            </el-card>
        </el-col>
    </el-row>
</template>

<script setup>
import axios from "axios";
import { onMounted, ref} from "vue";

const movies = ref([])
axios.defaults.baseURL = 'http://localhost/nostalgia'

onMounted( () => {
    axios.get('/movies',{
        params:{
            pageNum: 1,
            pageSize: 9,
        }
    }).then(response => {
        movies.value = response.data.data.pages
    }).catch(error => {
        console.log(error);
    })

})

</script>

<style scoped>

</style>