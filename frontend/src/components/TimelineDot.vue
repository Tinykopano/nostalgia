<template>
  <div class="dot">
  </div>
</template>

<script>
export default {
    name: "TimelineDot"
}
</script>

<style scoped>
.dot {
    cursor: pointer;
    position: absolute;
    background-color: plum;
    width: 20px;
    height: 20px;
    border-radius: 50%;
    transition: 0.6s
;
}
.dot:hover {
    transform: scale(1.4);
}
</style>