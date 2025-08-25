<template>
    <form class="form">
        <div class="form-header">
            <div class="form-logo">
                <svg xmlns="http://www.w3.org/2000/svg" width="24" height="24" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2" stroke-linecap="round" stroke-linejoin="round">
                    <path d="M20 21v-2a4 4 0 0 0-4-4H8a4 4 0 0 0-4 4v2"></path>
                    <circle cx="12" cy="7" r="4"></circle>
                </svg>
            </div>
            <h1 class="form-title">서버 참가하기</h1>
            <p>서버에 참가하기 위해 정보를 입력 해주세요</p>
        </div>
        <div class="form-main">
            <div class="form-group">
                <label>이름</label>
                <input class="form-input" v-model="f_name" placeholder="이름을 입력하세요" required/>
            </div>
            <div class="form-group form-group-last">
                <label>호스트</label>
                <div class="form-host">
                    <input class="form-input" type="text" v-model="f_host" placeholder="127.0.0.1" required/>
                    <input class="form-input" type="number" v-model="f_port" placeholder="8080" required/>
                </div>
            </div>
            <p class="form-alert">&nbsp;</p>
            <button class="connect-bnt" type="submit">참가하기</button>
        </div>
    </form>
</template>

<script setup lang="ts">
import { ref } from 'vue'

const f_name = ref('')
const f_host = ref('')
const f_port = ref('')
</script>

<style scoped>
.form {
    display: flex;
    flex-direction: column;
    position: absolute;
    left: 50%;
    top: 25vh;
    width: 400px;
    border-radius: 8px;
    box-shadow: 0 10px 15px -3px rgba(0, 0, 0, 0.1), 0 4px 6px -2px rgba(0, 0, 0, 0.05);
    border: 1px solid rgba(0, 0, 0, 0.1);
    transform: translateX(-50%);
    color: var(--black-dark);
}
.form-header {
    text-align: center;
    width: 100%;
    margin-bottom: 1rem;
}
.form-logo {
    top: 2rem;
    left: 50%;
    transform: translateX(-50%);
    width: 40px;
    height: 40px;
    background-color: var(--main1);
    align-items: center;
    justify-content: center;
    color: white;
    border-radius: 50%;
    display: flex;
}
.form-title {
    font-weight: 600;
    font-size: 25px;
    margin-top: 45px;
}
.form-header > p {
    margin-top: 5px;
    color: #6b7280;
    font-size: 0.875rem;
}
.form-group {
    margin-bottom: 1rem;
    display: flex;
    flex-direction: column;
}
.form-group-last {
    margin-bottom: 0.7rem !important;
}
label {
    display: block;
    font-size: 0.875rem;
    font-weight: 500;
    margin-bottom: 0.5rem;
    color: #374151;
    margin-left: 1px;
}
.form-main {
    padding: 0 1.5rem 1.5rem;
}
.form-input {
    width: 100%;
    padding: 0.625rem;
    border: 1px solid #d1d5db;
    border-radius: 0.375rem;
    font-size: 0.875rem;
    transition: border-color 0.15s ease-in-out;
    box-sizing: border-box;
}
.form-host {
    display: flex;
    flex-direction: row;
    gap: 10px;
}
.form-host > input:first-child {
    flex: 3;
}
.form-host > input:last-child {
    flex: 1;
}
.form-alert {
    text-align: center;
    color: crimson;
    font-size: 0.9rem;
    overflow: hidden !important;
    margin-bottom: 4px;
}
.connect-bnt {
    font-size: 0.9rem;
    width: 100%;
    padding: 0.625rem;
    background-color: var(--main1);
    color: white;
    border: none;
    border-radius: 0.375rem;
    font-weight: 450;
    cursor: pointer;
    transition: background-color 0.15s ease-in-out;
}
.connect-bnt:hover {
    background-color: var(--main2);
}
</style>
