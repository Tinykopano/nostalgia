<template>
    <div class="sticky-footer">
        <header class="sticky-footer__header">
            <v-img src="/img/banner.png" style="height: 200px;"></v-img>
        </header>
        <main class="sticky-footer__main">
            <div class="split-screen">
                <!-- Left content -->

                <div class="split-screen__half">
                    <div>今日电影</div>
                    <v-img
                            class="bg-white"
                            width="300"
                            :aspect-ratio="1"
                            src="https://cdn.vuetifyjs.com/images/parallax/material.jpg"
                    ></v-img>
                    <v-card>
                        <v-card-title>Nostalgia</v-card-title>
                        <v-card-subtitle>2023/4/23</v-card-subtitle>
                        <v-card-text>Lorem ipsum dolor sit amet, no nam oblique veritus. Commune scaevola imperdiet nec
                            ut, sed euismod convenire principes at. Est et nobis iisque percipit, an vim zril disputando
                            voluptatibus, vix an salutandi sententiae.
                        </v-card-text>
                        <v-card-actions>Learn More！</v-card-actions>
                    </v-card>
                </div>

                <!-- Right content -->
                <div class="split-screen__half">
                    <v-timeline align="start">
                        <v-timeline-item
                                v-for="(item, i) in items"
                                :key="i"
                                :dot-color="item.color"
                                :icon="item.icon"
                                fill-dot
                        >
                            <v-card>
                                <v-card-title :class="['text-h6', `bg-${item.color}`]">
                                    Lorem Ipsum Dolor
                                </v-card-title>
                                <v-card-text class="bg-white text--primary">
                                    <p>Lorem ipsum dolor sit amet, no nam oblique veritus. Commune scaevola imperdiet
                                        nec ut, sed euismod convenire principes at. Est et nobis iisque percipit, an vim
                                        zril disputando voluptatibus, vix an salutandi sententiae.</p>
                                    <v-btn
                                            :color="item.color"
                                            variant="outlined"
                                    >
                                        Button
                                    </v-btn>
                                </v-card-text>
                            </v-card>
                        </v-timeline-item>
                    </v-timeline>
                </div>
            </div>
        </main>
        <footer class="sticky-footer__footer">...</footer>
    </div>
</template>

<script>
export default {
    data: () => ({
        items: [
            {
                color: 'red-lighten-2',
                icon: 'mdi-star',
            },
            {
                color: 'purple-lighten-2',
                icon: 'mdi-book-variant',
            },
            {
                color: 'green-lighten-1',
                icon: 'mdi-airballoon',
            },
        ],
    }),
}
</script>

<style scoped>
.sticky-footer {
    display: flex;
    flex-direction: column;
    height: 100%;
}

.sticky-footer__header,
.sticky-footer__footer {
    flex-shrink: 0;
}

.sticky-footer__main {
    flex-grow: 1;
    margin-left: 300px;
    margin-right: 300px;
}

.split-screen {
    display: flex;
}

.split-screen__half {
    flex: 1;
    margin-left: 30px;
    margin-right: 30px;
}
</style>