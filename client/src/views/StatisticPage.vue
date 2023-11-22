<template>
  <div class="statistics-container">
    <Navigation />
    <div class="result-section">
      <div class="search-icon">
        <img :src="require('@/assets/magnifying_glass.png')" alt="Search" class="magnifying-glass">
      </div>
      <div class="result-text">분석 결과 ...</div>
      <div v-if="isOutlier" class="result-box outlier">Outlier</div>
      <div v-else class="result-box normal">Normal</div>
    </div>
  </div>
</template>



<script>
import Navigation from "../components/NavigationBar.vue";

export default {
  name: "StatisticPage",
  components: {
    Navigation,
  },
  data() {
    return {
      isOutlier: false,
    };
  },
};
</script>


<style scoped>
.statistics-container {
  text-align: center;
  position: relative;
}

.result-section {
  display: inline-flex;
  align-items: center;
  justify-content: center;
  margin-top: 350px;
  position: relative;
}

.result-text {
  font-size: 70px; /* Increased font size */
  margin-right: 30px; /* Spacing between text and box */
  font-style: italic;
  font-weight: bold;
  position: relative;
  z-index: 2;
}

.result-box {
  display: inline-block;
  padding: 15px 20px; /* Adjusted padding for larger box */
  font-size: 70px; /* Font size for the text in the box */
  color: white;
  border-radius: 25px;
  font-weight: bold;
  box-shadow: 5px 5px 15px rgba(0, 0, 0, 0.6); /* Drop shadow for the box */
}

.outlier {
  background-color: #000583; /* Dark blue color */
}

.normal {
  background-color: #000583; /* Example color, change as needed */
}

.magnifying-glass {
  position: absolute; /* 절대 위치 설정 */
  top: 50%; /* 중앙 정렬을 위한 설정 */
  left: 25%;
  transform: translate(-50%, -50%); /* 중앙 정렬을 위한 설정 */
  width: 140px; /* 원하는 크기로 조정 */
  height: auto; /* 비율 유지 */
  z-index: 1; /* 텍스트 뒤로 */
  opacity: 0.2;
  filter: grayscale(100%);
}

</style>




