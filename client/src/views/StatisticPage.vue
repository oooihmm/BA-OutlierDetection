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
  font-size: 40px;
  margin-right: 30px;
  position: relative;
  z-index: 2;
}

.result-box {
  display: flex; /* Use flexbox for alignment */
  align-items: center; /* Center vertically */
  justify-content: center; /* Center horizontally */
  padding: 15px 20px;
  font-size: 24px;
  color: white;
  border-radius: 10px;
  width: 150px;
  height: 50px;
  font-weight: bold; /* For bold text */
}

.outlier {
  background-color: #000583;
}

.normal {
  background-color: #000583;
}

.magnifying-glass {
  position: absolute;
  top: 50%;
  left: 25%;
  transform: translate(-50%, -50%);
  width: 130px;
  height: auto;
  z-index: 1;
  opacity: 0.2;
  filter: grayscale(100%);
}
</style>





