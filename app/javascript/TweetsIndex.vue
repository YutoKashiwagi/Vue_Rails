<template>
  <div id="app">
    <table>
      <tbody>
        <tr>
          <th>ID</th>
          <th>Content</th>
        </tr>
        <tr v-for="tweet in tweets" :key="tweet.id">
          <td>
            <router-link :to="{ name: 'TweetDetail', params: { id: tweet.id} }">{{ tweet.id }}</router-link>
          </td>
          <td>{{ tweet.content }}</td>
        </tr>
      </tbody>
    </table>
  </div>
</template>

<script>
import axios from 'axios';

export default {
  data: function () {
    return {
      tweets: []
    }
  },
  mounted () {
    axios
      .get('/api/v1/tweets.json')
      .then(response => (this.tweets = response.data))
  }
}
</script>

<style scoped>
</style>
