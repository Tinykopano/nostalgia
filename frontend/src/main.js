import { createApp } from 'vue'
import App from './App.vue'
import TodayMovie from "@/views/TodayMovie.vue";
import History from "@/views/History.vue";
import MovieRepository from "@/views/MovieRepository.vue";
import RankingList from "@/views/RankingList.vue";

const app = createApp(App)

// ele
import ElementPlus from 'element-plus'
import 'element-plus/dist/index.css'
app.use(ElementPlus)

// router
import * as VueRouter from 'vue-router'
const routes = [
    { path: '/', component: TodayMovie },
    { path: '/history', component: History },
    { path: '/movies', component: MovieRepository },
    { path: '/ranking', component: RankingList },
]
const router = VueRouter.createRouter({
    // 4. 内部提供了 history 模式的实现。为了简单起见，我们在这里使用 hash 模式。
    history: VueRouter.createWebHashHistory(),
    routes, // `routes: routes` 的缩写
})
app.use(router)

// Vuetify
import 'vuetify/styles'
import { createVuetify } from 'vuetify'
import * as components from 'vuetify/components'
import * as directives from 'vuetify/directives'

const vuetify = createVuetify({
    components,
    directives,
})
app.use(vuetify)

app.mount('#app')
