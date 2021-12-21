
<template>
  <Navbar />
  <Topic time="7.50" />
  <Report
    :new_case="2525"
    :total_case="2194053"
    :new_death="31"
    :total_death="21408"
    :new_recovered="4190"
    :total_recovered="2132548"
  />
</template>

<script>
import axios from "axios";
import Topic from "./components/TopicComponent.vue";
import Report from "./components/ReportComponent.vue";
import Navbar from "./components/NavbarComponent.vue";
export default {
  name: "App",
  components: {
    Topic,
    Report,
    Navbar,
  },
  data() {
    return {
      info: null,
    };
  },
  mounted() {
    axios
      .get("https://covid19.ddc.moph.go.th/api/Cases/today-cases-all")
      .then((response) => {
        this.info = response.data[0];
        console.log(this.info);
      });
  },
};
</script>

<style scoped>
</style>
