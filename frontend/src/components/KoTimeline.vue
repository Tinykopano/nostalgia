<template>
    <v-timeline truncate-line="both">
        <v-timeline-item v-for="e in events" size="" fill-dot="fill-dot">
            <template v-slot:icon>
                <TimelineDot></TimelineDot>
            </template>
            <template v-slot:opposite>
                <span>{{ e.startTime }}</span>
            </template>
            <v-card class="elevation-2">
                <v-card-title class="text-h5">
                    {{ e.title }}
                </v-card-title>
                <v-card-text>
                    {{e.description}}
                </v-card-text>
            </v-card>
        </v-timeline-item>
    </v-timeline>
</template>

<script setup>
import TimelineDot from "@/components/TimelineDot.vue";
import {ref} from "vue";

const events = ref([{
    id: 1,
    startTime: '1895-12-28',
    title: '第一部电影',
    description: '电影的发明者卢米埃尔兄弟，于1895年利用“活动摄影机”拍摄了世界上第一批电影，这一年也成为了电影的诞生年。《火车进站》是他们最有名的和最被人仿效的作品之一。在影片《火车进站》中，火车头冲着镜头呼啸而过，当时的观众看了大吃一惊，十分恐慌，以为真会被火车轧死，吓得惊慌四散。'
}, {
    id: 2,
    startTime: '1920-02-06',
    title: '德国表现主义',
    description: '卡里加里博士的小屋'
},{
    id: 3,
    startTime: '1958-01-01',
    title: '法国新浪潮',
    description: '法国新浪潮电影运动是继欧洲先锋主义、意大利新现实主义以后的第三次具有世界影响的电影运动，它没有固定的组织、统一的宣言、完整的艺术纲领。这一运动的本质是一次要求以现代主义精神来彻底改造电影艺术的运动，它的出现将西欧的现代主义电影运动推向了高潮。'
}])
</script>

<style scoped>

</style>