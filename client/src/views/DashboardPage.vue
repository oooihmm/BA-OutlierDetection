<!-- TableauEmbed.vue -->
<template>
  <div>
    <Navigation />
    <div class="container">
      <div class="tableauPlaceholder" :id="vizId" style="position: relative">
        <noscript>
          <a :href="tableauLink" target="_blank">
            <img
              :alt="dashboardTitle"
              :src="staticImageUrl"
              style="border: none"
            />
          </a>
        </noscript>
        <object class="tableauViz" style="display: none">
          <param name="host_url" :value="tableauHostUrl" />
          <param name="embed_code_version" value="3" />
          <param :name="'path'" :value="tableauPath" />
          <param name="toolbar" value="yes" />
          <!-- Add other parameters as needed -->
        </object>
      </div>
    </div>
  </div>
</template>

<script>
import Navigation from "../components/NavigationBar.vue";

export default {
  name: "DashboardPage",
  components: {
    Navigation,
  },
  data() {
    return {
      vizId: "viz1701696609780",
      tableauHostUrl: "https://public.tableau.com/",
      tableauPath: "shared/QQFXHPBJF",
      staticImageUrl:
        "https://public.tableau.com/static/images/QQ/QQFXHPBJF/1.png",
      dashboardTitle: "대시보드 1",
      // Add other data properties as needed
    };
  },
  mounted() {
    this.initializeTableau();
  },
  methods: {
    initializeTableau() {
      const divElement = document.getElementById(this.vizId);
      const vizElement = divElement.getElementsByTagName("object")[0];

      // Adjust dimensions based on container width
      if (divElement.offsetWidth > 800) {
        vizElement.style.width = "1000px";
        vizElement.style.height = "827px";
      } else if (divElement.offsetWidth > 500) {
        vizElement.style.width = "1000px";
        vizElement.style.height = "827px";
      } else {
        vizElement.style.width = "100%";
        vizElement.style.height = "1377px";
      }

      // Load Tableau API script
      const scriptElement = document.createElement("script");
      scriptElement.src =
        "https://public.tableau.com/javascripts/api/viz_v1.js";
      vizElement.parentNode.insertBefore(scriptElement, vizElement);
    },
  },
};
</script>

<style>
.container {
  display: flex;
  flex-direction: column;
  padding-top: 60px;
  align-items: center;
  min-height: 100vh;
  width: 100vw;
  position: absolute;
}

.tableauPlaceholder {
  position: relative;
  width: 100%; /* Adjust as needed */
  max-width: 1000px; /* Adjust as needed */
  margin: 0 auto; /* This will center the element horizontally */
}
</style>
