<template>
  <div class="container">
    <Navigation />
    <div class="file-upload-container">
      <!-- SVG를 file-upload-container 내부에 추가합니다. -->
      <svg width="288" height="92" viewBox="0 0 72 23" fill="none" xmlns="http://www.w3.org/2000/svg">
        <rect width="72" height="23" rx="2" fill="#000583" fill-opacity="0.1"/>
        <g opacity="0.6">
          <path opacity="0.8" d="M29 8V14" stroke="black" stroke-width="3" stroke-linecap="round"/>\
          <path opacity="0.8" d="M24 6L24 17" stroke="black" stroke-width="3" stroke-linecap="round"/>
          <path opacity="0.8" d="M19 3V19" stroke="black" stroke-width="3" stroke-linecap="round"/>
          <path opacity="0.8" d="M14 4V18" stroke="black" stroke-width="3" stroke-linecap="round"/>
          <path opacity="0.8" d="M49 3V20" stroke="black" stroke-width="3" stroke-linecap="round"/>
          <path opacity="0.8" d="M44 6V16" stroke="black" stroke-width="3" stroke-linecap="round"/>
          <path opacity="0.8" d="M39 4V18" stroke="black" stroke-width="3" stroke-linecap="round"/>
          <path opacity="0.8" d="M64 3V20" stroke="black" stroke-width="3" stroke-linecap="round"/>
          <path opacity="0.8" d="M59 5V16.5" stroke="black" stroke-width="3" stroke-linecap="round"/>
          <path opacity="0.8" d="M54 8V14" stroke="black" stroke-width="3" stroke-linecap="round"/>
          <path opacity="0.8" d="M69 8V14" stroke="black" stroke-width="3" stroke-linecap="round"/>
          <path opacity="0.8" d="M34 6V17" stroke="black" stroke-width="3" stroke-linecap="round"/>
          <path opacity="0.8" d="M9 7V16" stroke="black" stroke-width="3" stroke-linecap="round"/>
          <path opacity="0.8" d="M4 10L4 14" stroke="black" stroke-width="3" stroke-linecap="round"/>
        </g>   
      </svg>
      <!-- File input -->
        <input type="file" @change="handleAudioUpload" accept=".wav,.mp3,.mp4" class="file-input" />
      <!-- Instructions and file types text -->
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
      this.$router.push('/loading')
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
  height: 380px; /* 세로 길이 */
  box-sizing: border-box; /* border와 padding을 너비와 높이에 포함 */
  position: relative; /* 자식 요소들을 상대적으로 위치시킵니다. */
  display: flex;
  flex-direction: column;
  align-items: center;
  justify-content: center;
  /* Adjust the padding and margin as needed */
  padding: 20px;
  gap: 10px; /* This creates space between the flex items */
}

.file-input {
  /* 파일 입력 필드 위에 여백을 줄입니다. 기존의 margin-top 값을 적절하게 조정합니다. */
  margin-top: 10px;
  margin-bottom: 10px; 
}

.file-upload-instructions {
  margin-top: 0; /* 마진을 제거하거나 조정하여 텍스트들이 붙어 보이게 합니다. */
  color: #000000;
  font-size: 24px;
  /*font-weight: bold;*/
  margin-bottom: 0; /* file-upload-instructions와 file-types 사이의 마진을 제거 */
}

.file-types {
  margin-top: 0px; /* 약간의 공간을 제공합니다. */
  color: #E0E0E0;
  font-size: 20px;
}


.button-container {
  text-align: center;
  margin-bottom: 30px;
  padding-bottom: 50px;
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

.start-button:hover {
  background: rgba(0, 0, 128, 0.859);
}

</style>