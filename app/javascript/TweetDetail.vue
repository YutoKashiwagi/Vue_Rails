<template>
  <div>
    <p>ID: {{ tweet.id }}</p>
    <p>Content: {{ tweet.content }}</p>
    <p><router-link :to="{ name: 'TweetEdit', parmas: { id: tweet.id }}">Edit</router-link></p>
    <button v-on:click="deleteTweet">Delete</button>
  </div>
</template>

<script>
import axios from 'axios';

export default {
  data: function () {
    return {
      tweet: {}
    }
  },
  mounted () {
    axios
      .get(`/api/v1/tweets/${this.$route.params.id}.json`)
      .then(response => (this.tweet = response.data))
  },
  methods: {
    deleteTweet: function() {
      axios
        .delete(`/api/v1/tweets/${this.tweet.id}.json`, this.tweet)
        .then(response => {
          this.$router.push({ name: 'TweetIndex' })
        })
    }
  }
}
</script>
<style scoped>
</style>
