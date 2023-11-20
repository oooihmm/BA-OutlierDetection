<template>
  <div class="container">
    <Navigation />
     <button class="start-button" @click="startAnalysis" :disabled="!audioFile">Start</button>
  </div>
</template>

<script>
import Navigation from "../components/NavigationBar.vue";

export default {
  name: "MainPage",
  components: {
    Navigation,
  },
};
</script>

<style scoped>
.container {
  display: flex; /* Flexbox 레이아웃 사용 */
  flex-direction: column; /* 자식 요소를 세로 방향으로 정렬 */
  justify-content: space-between; /* 자식 요소 사이의 공간을 균등하게 배분 */
  height: 100vh; /* 전체 뷰포트 높이 */
}

.start-button {
  background-color: navy; /* 남색 배경 */
  color: white; /* 흰색 텍스트 */
  padding: 20px 60px; /* 버튼 안쪽 여백 */
  font-size: 16px; /* 글자 크기 */
  border: none; /* 테두리 없앰 */
  border-radius: 3px; /* 버튼 모서리 둥글게 */
  cursor: pointer; /* 마우스 오버시 커서 변경 */
}

.start-button:disabled {
  background-color: navy; /* 비활성화 상태에서 배경 색 */
}
</style>

