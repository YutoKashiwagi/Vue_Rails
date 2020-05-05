<template>
  <form @submit.prevent="createTweet">
    <div>
      <label>Content</label>
      <input v-model="tweet.content" type="text">
    </div>
    <button type="submit">Commit</button>
  </form>
</template>

<script>
import axios from 'axios'

export default {
  data: function() {
    return {
      tweet: {
        content: ''
      }
    }
  },
  methods: {
    createTweet: function() {
      axios
        .post('/api/v1/tweets', this.tweet)
        .then(response => {
          this.$router.push({ name: 'TweetDetail', params: { id: response.data.id } })
        })
    }
  }
}
</script>
