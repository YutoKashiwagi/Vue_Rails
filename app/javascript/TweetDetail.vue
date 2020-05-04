<template>
  <div>
    <p>ID: {{ tweet.id }}</p>
    <p>Content: {{ tweet.content }}</p>
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
  }
}
</script>
<style scoped>
</style>
