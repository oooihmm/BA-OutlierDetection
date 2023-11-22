<template>
  <div>
      <Navigation />
      <div class="center">
          <div class="loading_image_text">분석 완료!</div>
          <div class="eng_text">Outlier Detection</div>
      </div>
  </div>
</template>

<script>
import Navigation from "../components/NavigationBar.vue";

export default {
  name: "DetectionPage",
  components: {
    Navigation,
  },
};
</script>


<style>
.center{
  position: relative;
  text-align: center;
  font-family: Arial, sans-serif;
  padding-top: 550px;
}


.loading_image_text{
  font-size: 45px; 
  color: black; 
  font-family: Arial, sans-serif;
  position: absolute;
  width: 100%;
  top: 50%;
  transform: translateY(-50%);
  margin: 0;
  z-index: 2;
}

.eng_text{
  font-size: 30px;
  color: #d5d5d5;
  position: absolute;
  top: calc(50% + 50px); 
  width: 100%;
  transform: translateY(200%);
}
</style>