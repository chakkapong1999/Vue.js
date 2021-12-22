<template>
  <div class="container">
    <div class="grid-cell1">
      <h3>ติดเชื้อเพิ่มขึ้น</h3>
      <h1>+ {{ info.new_case }}</h1>
      <p>
        สะสม <b> {{ info.total_case }}</b>
      </p>
    </div>
    <div class="grid-cell2">
      <h3>เสียชีวิตเพิ่มขึ้น</h3>
      <h1>+ {{ info.new_death }}</h1>
      <p>
        สะสม <b> {{ info.total_death }}</b>
      </p>
    </div>
    <div class="grid-cell3">
      <h3>รักษาตัวในโรงพยาบาลลดลง</h3>
      <h1>- 2525</h1>
      <p>สะสม <b>2415613543 </b></p>
    </div>
    <div class="grid-cell4">
      <h3>หายแล้วเพิ่มขึ้น</h3>
      <h1>+ {{ info.new_recovered }}</h1>
      <p>
        สะสม <b>{{ info.total_recovered }} </b>
      </p>
    </div>
    <div class="grid-cell5">
      <h3>ผู้รับวัคซีน โดส 1</h3>
      <h1>+ 2525</h1>
      <p>สะสม <b>2415613543</b></p>
    </div>
    <div class="grid-cell6">
      <h3>ผู้รับวัคซีน โดส 2</h3>
      <h1>+ 2525</h1>
      <p>สะสม <b>2415613543 </b></p>
    </div>
    <div class="grid-cell7">
      <h3>สะสม 76.37% ของประชากร</h3>
      <p>
        นับเฉพาะเข็มแรกฉีดแล้ว 50546545 คน ไม่นับรวมโดสที่สองที่ฉีดซ้ำให้คนเดิม
      </p>
    </div>
  </div>
</template>

<script>
export default {
  name: "Report",
  props: {
    info: Object,
  },
};
</script>

<style scoped>
h1 {
  font-size: 40px;
  margin-bottom: 10px;
  margin-top: 10px;
}
p {
  font-size: 15px;
}
b {
  font-size: 22px;
}
.container {
  display: grid;
  margin-left: 100px;
  width: 50%;
  grid-template-columns: auto auto auto auto;
  grid-template-rows: auto auto;
  align-content: center;
  color: white;
  font-family: "Times New Roman", Times, serif;
}
.grid-cell1 {
  grid-column: 1/3;
  grid-row: 1/3;
  border-radius: 20px 0px 0px 0px;
  text-indent: 20px;
  background: rgba(255, 0, 0, 0.5);
}
.grid-cell2 {
  grid-column: 3/5;
  grid-row: 1/3;
  border-radius: 0px 20px 0px 0px;
  text-indent: 20px;
  background: rgba(64, 51, 71, 0.5);
}

.grid-cell3 {
  grid-column: 1/3;
  text-indent: 20px;
  background: rgba(80, 28, 80, 0.5);
}
.grid-cell4 {
  grid-column: 3/5;
  text-indent: 20px;
  background: rgba(74, 148, 45, 0.9);
}
.grid-cell5 {
  grid-column: 1/3;
  text-indent: 20px;
  background: rgba(83, 136, 63, 0.8);
}
.grid-cell6 {
  grid-column: 3/5;
  text-indent: 20px;
  background: rgb(83, 136, 63, 0.8);
}
.grid-cell7 {
  grid-column: 1/5;
  border-radius: 0px 0px 30px 30px;
  text-align: center;
  background: rgba(40, 56, 33, 0.5);
}
</style>