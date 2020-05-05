<template>
  <tweet-form-pane :tweet='tweet' @submit="createTweet"></tweet-form-pane>
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
