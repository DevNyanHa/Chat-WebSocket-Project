<template>
  <div class="chat-room">
    <div class="messages">
      <div v-for="(msg, i) in messages" :key="i">{{ msg }}</div>
    </div>
    <form @submit.prevent="handleSend">
      <input v-model="input" placeholder="메시지를 입력하세요" />
      <button type="submit">전송</button>
    </form>
  </div>
</template>

<script setup lang="ts">
import { ref, onMounted } from 'vue'
import { connect, sendMessage } from '../chat'

const messages = ref<string[]>([])
const input = ref("")

onMounted(() => {
  connect((msg: string) => {
    messages.value.push(msg)
  })
})

function handleSend() {
  if (input.value.trim()) {
    sendMessage(input.value)
    input.value = ""
  }
}
</script>

<style scoped>
.chat-room { border: 1px solid #ccc; padding: 10px; width: 300px; }
.messages { height: 200px; overflow-y: auto; margin-bottom: 10px; }
</style>
