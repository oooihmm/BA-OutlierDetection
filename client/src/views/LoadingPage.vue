<template>
    <div>
        <Navigation />
        <div class="loading_image">
            <img src="../assets/Loading.png" width="150" class="icon">
            <div class="loading_image_text">분석 중입니다 ...</div>
            <div class="eng_text">Outlier Detection</div>
        </div>
    </div>
</template>

<script>
import Navigation from "../components/NavigationBar.vue";

export default {
    name: "LoadingPage",
    components: {
        Navigation,
    },
};
</script>


<style>
.loading_image{
    position: relative;
    text-align: center;
    font-family: Arial, sans-serif;
    padding-top: 550px;
}

.icon{
    position: absolute;
    top: 50%;
    left: 50%;
    transform: translate(-50%, -50%);
    width: 150px;
    height: auto;
    z-index: 1;
    opacity: 0.3;
}

.loading_image_text{
    font-size: 45px; 
    color: black; 
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