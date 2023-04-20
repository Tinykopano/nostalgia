<script setup>
import {useRouter} from "vue-router";

const router = useRouter()
function router1(){
    router.push("/")
}

function router2(){
    router.push("/images")
}
</script>

<template>
  <router-view></router-view>
<v-btn @click="router1"> Home</v-btn>
<v-btn @click="router2"> Images</v-btn>
</template>

<style scoped>
</style>
