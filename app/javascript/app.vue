<template>
  <div id="app">
    <table>
      <tbody>
        <tr>
          <th>ID</th>
          <th>Content</th>
        </tr>
        <tr v-for="tweet in tweets" :key="tweet.id">
          <td>{{ tweet.id }}</td>
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
p {
  font-size: 2em;
  text-align: center;
}
</style>
