<template>
    <h1 class="title">Chat WebSocket Project</h1>
    <UserForm @submit-form="connectChat" v-model:message="message" />

    <div v-if="formData">
        <p>이름: {{ formData.name }}</p>
        <p>호스트: {{ formData.host }}</p>
        <p>포트: {{ formData.port }}</p>
    </div>
</template>

<script setup lang="ts">
import { ref } from 'vue'
import UserForm from './components/UserForm.vue'

const message = ref('\u00A0')

const formData = ref<{ name: string; host: string; port: number} | null>(null)

function connectChat(data: { name: string; host: string; port: number }) {
    formData.value = data
    message.value = '연결 시도 중...'
}
</script>

<style scoped>
.title {
    text-align: center;
    font-family: Pretendard;
    top: 15vh;
    font-size: 40px;
    color: var(--black-dark);
}
</style>
