<template>
  <div>
    <router-link to="/">Index</router-link>
    <router-link to="/tweets/new">New</router-link>
    <router-view></router-view>
  </div>
</template>

<script>
import Vue from 'vue'
import VueRouter from 'vue-router'

import TweetsIndexVue from 'TweetsIndex.vue'
import TweetDetailVue from './TweetDetail.vue'
import TweetNewVue from './TweetNew.vue'

const router = new VueRouter({
  routes: [
    {
      path: '/',
      component: TweetsIndexVue
    },
    {
      path: '/tweets/:id(\\d+)',
      name: 'TweetDetail',
      component: TweetDetailVue
    },
    {
      path: '/tweets/new',
      name: 'TweetNew',
      component: TweetNewVue
    }
  ]
})

Vue.use(VueRouter)

export default {
  router
}
</script>

<style scoped>
</style>
