<template>
  <div id="navigation">
    <span>
      <img
        src="../assets/OutlierDetection.png"
        alt="Outlier Detection"
        @click="
          () => {
            this.$router.push('/');
          }
        "
      />
    </span>
    <div>
      <span>
        <img
          class="image"
          src="../assets/Home.png"
          alt="Home"
          @click="
            () => {
              this.$router.push('/');
            }
          "
        />
      </span>
      <span>
        <img
          class="image"
          src="../assets/Statistics.png"
          alt="Dashboard"
          @click="
            () => {
              this.$router.push('/dashboard');
            }
          "
        />
      </span>
    </div>
  </div>
</template>

<script>
export default {
  name: "NavigationBar",
};
</script>

<style scoped>
#navigation {
  max-width: 100vw;
  height: 70px;
  padding: 0 30px;
  background-color: #000583;

  display: flex;
  flex-direction: row;
  justify-content: space-between;
  align-items: center;
}

.image {
  padding: 0 5px;
}
</style>
