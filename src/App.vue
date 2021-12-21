
<template>
  <Navbar />
  <Topic time="7.50" />
  <Report
    :new_case="info.new_case"
    :total_case="info.total_case"
    :new_death="info.new_death"
    :total_death="info.total_death"
    :new_recovered="info.new_recovered"
    :total_recovered="info.total_recovered"
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
      info: [],
    };
  },
  created() {
    axios
      .get("https://covid19.ddc.moph.go.th/api/Cases/today-cases-all")
      .then((response) => {
        this.info = response.data[0];
      });
  },
};
</script>

<style scoped>
</style>
