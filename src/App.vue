<template>
    <h1 class="title">Chat WebSocket Project</h1>
    <UserForm />
</template>

<script setup lang="ts">
import UserForm from './components/UserForm.vue';
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
