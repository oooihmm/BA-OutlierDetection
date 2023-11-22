<template>
  <div class="container">
    <Navigation />
    <!-- 음성 파일 업로드 인터페이스 -->
    <div class="file-upload-container">
      <input type="file" @change="handleAudioUpload" accept=".wav,.mp3,.mp4" />
      <p class="file-upload-instructions">오디오 파일을 업로드 하시오.</p>
      <p class="file-types">(.wav, .mp3, .mp4 등)</p>
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
  margin: 20px auto; /* 위아래 마진을 20px, 좌우 마진을 자동으로 설정 */
  padding: 40px 20px; /* 상하 여백 40px, 좌우 여백 20px */
  border: 2px dashed #E0E0E0; /* 점선 테두리 */
  border-radius: 10px; /* 테두리 모서리 둥글게 */
  cursor: pointer; /* 마우스 오버시 커서 변경 */
  width: 1000px; /* 가로 길이 */
  height: 300px; /* 세로 길이 */
  box-sizing: border-box; /* border와 padding을 너비와 높이에 포함 */
  position: relative; /* 자식 요소들을 상대적으로 위치시킵니다. */
}

.file-input {
  margin-top: 100px; /* 파일 입력 필드 위에 여백 추가 */
}

.file-upload-instructions,
.file-types {
  margin-top: 50px; /* 텍스트 위에 여백 추가 */
  color: #555; /* 텍스트 색상 설정 */
  font-size: 18px; /* 텍스트 크기 설정 */
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