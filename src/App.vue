
<template>
  <Navbar />
  <Topic :time="time" :date="date" />
  <Report :info="info" />
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
      info: {},
      time: "",
      date: "",
    };
  },
  mounted() {
    axios
      .get("https://covid19.ddc.moph.go.th/api/Cases/today-cases-all")
      .then((response) => {
        this.info = response.data[0];
        this.formatTime(this.info.update_date);
      });
  },
  methods: {
    setMonth(m) {
      var fullMonth;
      switch (m) {
        case 1:
          fullMonth = "มกราคม";
          break;
        case 2:
          fullMonth = "กุมภาพันธ์";
          break;
        case 3:
          fullMonth = "มีนาคม";
          break;
        case 4:
          fullMonth = "เมษายน";
          break;
        case 5:
          fullMonth = "พฤษภาคม";
          break;
        case 6:
          fullMonth = "มิถุนายน";
          break;
        case 7:
          fullMonth = "กรกฎาคม";
          break;
        case 8:
          fullMonth = "สิงหาคม";
          break;
        case 9:
          fullMonth = "กันยายน";
          break;
        case 10:
          fullMonth = "ตุลาคม";
          break;
        case 11:
          fullMonth = "พฤศจิกายน";
          break;
        case 12:
          fullMonth = "ธันวาคม";
          break;

        default:
          console.log("NO data");
          break;
      }
      return fullMonth;
    },
    formatTime(t) {
      var date_time = [];
      var date, time;
      date_time = t.split(" ");
      date = date_time[0];
      time = date_time[1];
      this.time = time;
      this.formatDate(date);
    },
    formatDate(d) {
      var fullDate = [];
      var day, month, year, fullMonth;
      fullDate = d.split("-");
      console.log(fullDate);
      day = fullDate[2];
      month = fullDate[1];
      year = fullDate[0];
      year = parseInt(year) + 543;
      fullMonth = this.setMonth(parseInt(month));

      this.date = `${day} ${fullMonth} ${year}`;
    },
  },
};
</script>

<style>
body {
  background-image: url("https://www.regionofwaterloo.ca/en/health-and-wellness/resources/Images/nCoV1600x642.png");
  background-size: cover;
  background-repeat: no-repeat;
}
</style>
