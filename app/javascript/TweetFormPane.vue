<template>
  <form @submit.prevent="$emit('submit')">
    <div>
      <label>Content</label>
      <input v-model="tweet.content" type="text">
    </div>
    <button type="submit">Commit</button>
  </form>
</template>

<script>
export default {
  props: {
    tweet: {}
  }
}
</script>
