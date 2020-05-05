<template>
  <tweet-form-pane :tweet='tweet' @submit="updateTweet"></tweet-form-pane>
</template>

<script>
import axios from 'axios';

import TweetFormPane from 'TweetFormPane.vue';

export default {
  components: {
    TweetFormPane
  },
  data: function() {
    return {
      tweet: {
        content: ''
      }
    }
  },
  mounted () {
    axios
      .get(`/api/v1/tweets/${this.$route.params.id}.json`)
      .then(response => (this.tweet = response.data))
  },
  methods: {
    updateTweet: function() {
      axios
        .put(`/api/v1/tweets/${this.tweet.id}`, this.tweet)
        .then(response => {
          this.$router.push({ name: 'TweetDetail', params: { id: this.tweet.id } })
        })
    }
  }
}
</script>
