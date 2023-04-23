import { createApp } from 'vue'
import App from './App.vue'
import Welcome from "@/components/Welcome.vue";
import ImageGrid from "@/components/ImageGrid.vue";

// Vuetify
import 'vuetify/styles'
import { createVuetify } from 'vuetify'
import * as components from 'vuetify/components'
import * as directives from 'vuetify/directives'

const vuetify = createVuetify({
    components,
    directives,
})

// router
import * as VueRouter from 'vue-router'
const About = { template: '<div>About</div>' }

const routes = [
    { path: '/', component: Welcome },
    { path: '/images', component: ImageGrid },
]

const router = VueRouter.createRouter({
    // 4. 内部提供了 history 模式的实现。为了简单起见，我们在这里使用 hash 模式。
    history: VueRouter.createWebHashHistory(),
    routes, // `routes: routes` 的缩写
})

createApp(App).use(vuetify).use(router).mount('#app')