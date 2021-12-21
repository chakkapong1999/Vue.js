
<template>
  <div>
    <img :src="avatar" :height="150" :width="150" />
    <h1>ชื่อผู้สมัคร : {{ getFullName() }}</h1>
    <h1>อายุ : {{ age }}</h1>
    <p>ที่อยู่ : <span v-html="address"> </span></p>
    <p>Social : <a :href="social" target="_blank"> Facebook</a></p>
    <p>งานอดิเรก :</p>
    <ul>
      <li>{{ hobbies[0] }}</li>
      <li>{{ hobbies[1] }}</li>
      <li>{{ hobbies[2] }}</li>
    </ul>
    <p>ข้อมูลพื้นฐาน :</p>
    <ul>
      <li>เพศ : {{ general.gender }}</li>
      <li>นำหนัก : {{ general.weight }}</li>
      <li>ส่วนสูง : {{ general.height }}</li>
    </ul>
  </div>
</template>

<script>
import axios from "axios";
export default {
  name: "App",
  data() {
    return {
      info: null,
      firstname: "Max",
      lastname: "P",
      age: 20,
      address: "<strong>โคราช</strong>",
      social: "https://www.facebook.com/Chakkapong.Max/",
      avatar:
        "https://thumbs.dreamstime.com/b/businessman-icon-vector-male-avatar-profile-image-profile-businessman-icon-vector-male-avatar-profile-image-182095609.jpg",
      hobbies: ["เล่นกีตาร์", "ฟังเพลง", "เล่นเกมส์"],
      general: { gender: "ชาย", weight: 70, height: 180, status: false },
    };
  },
  methods: {
    getFullName() {
      return this.firstname + this.lastname;
    },
  },
  mounted() {
    axios
      .get("https://covid19.ddc.moph.go.th/api/Cases/today-cases-all")
      .then((response) => console.log(response.data))
      .then((response) => (this.info = response.data));
  },
};
</script>

<style></style>
