<template>
  <div class="container">
    <Navigation />
    <!-- 음성 파일 업로드 인터페이스 -->
    <div class="file-upload-container">
      <input type="file" @change="handleAudioUpload" accept=".wav,.mp3,.mp4" />
    </div>
    <div class="button-container">
      <button class="start-button" @click="startAnalysis" :disabled="!audioFile">Start</button>
    </div>
  </div>
</template>

<script>
import Navigation from "../components/NavigationBar.vue";

export default {
  name: "MainPage",
  components: {
    Navigation,
  },
  data() {
    return {
      audioFile: null, // 음성 파일 데이터
    };
  },
  methods: {
    handleAudioUpload(event) {
      // 사용자가 파일을 선택하면 이 함수가 호출됩니다.
      const files = event.target.files;
      if (files.length > 0) {
        this.audioFile = files[0]; // 첫 번째 파일을 audioFile에 저장
      }
    },
    startAnalysis() {
      // 분석 시작 로직
      // ...
    }
  },
};
</script>

<style scoped>
/* 스타일은 이전과 같으며, 필요에 따라 파일 업로드 인터페이스 스타일을 추가할 수 있습니다. */
.container {
  display: flex;
  flex-direction: column;
  justify-content: space-between;
  height: 100vh;
}

.file-upload-container {
  text-align: center; /* 파일 업로드 인터페이스를 가운데 정렬 */
  margin: auto; /* 자동 마진으로 상하좌우 중앙 정렬 */
}

.button-container {
  text-align: center;
  margin-bottom: 30px;
}

.start-button {
  background-color: navy;
  color: white;
  padding: 20px 100px;
  font-size: 30px;
  border: none;
  border-radius: 10px;
  cursor: pointer;
}

.start-button:disabled {
  background-color: navy;
}
</style>