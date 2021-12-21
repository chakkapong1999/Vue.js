<template>
  <div class="container">
    <div class="grid-cell1">
      <h3>ติดเชื้อเพิ่มขึ้น</h3>
      <h1>+ {{ new_case }}</h1>
      <p>สะสม {{ total_case }}</p>
    </div>
    <div class="grid-cell2">
      <h3>เสียชีวิตเพิ่มขึ้น</h3>
      <h1>+ {{ new_death }}</h1>
      <p>สะสม {{ total_death }}</p>
    </div>
    <div class="grid-cell3">
      <h3>รักษาตัวในโรงพยาบาลลดลง</h3>
      <h1>+2525</h1>
      <p>สะสม 2415613543</p>
    </div>
    <div class="grid-cell4">
      <h3>หายแล้วเพิ่มขึ้น</h3>
      <h1>+ {{ new_recovered }}</h1>
      <p>สะสม {{ total_recovered }}</p>
    </div>
    <div class="grid-cell5">
      <h3>ผู้รับวัคซีน โดส 1</h3>
      <h1>+2525</h1>
      <p>สะสม 2415613543</p>
    </div>
    <div class="grid-cell6">
      <h3>ผู้รับวัคซีน โดส 2</h3>
      <h1>+2525</h1>
      <p>สะสม 2415613543</p>
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
    new_case: Number,
    total_case: Number,
    new_death: Number,
    total_death: Number,
    new_recovered: Number,
    total_recovered: Number,
  },
};
</script>

<style>
.container {
  display: grid;
  margin-left: 100px;
  width: 40%;
  grid-template-columns: auto auto auto auto;
  grid-template-rows: auto auto;
  align-content: center;
}
.grid-cell1 {
  grid-column: 1/2;
  grid-row: 1/3;
  border: 1px solid #000;
  border-radius: 20px 0px 0px 0px;
  text-indent: 10px;
}
.grid-cell2 {
  grid-column: 2/5;
  grid-row: 1/3;
  border: 1px solid #000;
  border-radius: 0px 20px 0px 0px;
  text-indent: 10px;
}
.grid-cell3,
.grid-cell5 {
  grid-column: 1/2;
  border: 1px solid #000;
  text-indent: 10px;
}
.grid-cell4,
.grid-cell6 {
  grid-column: 2/5;
  border: 1px solid #000;
  text-indent: 10px;
}
.grid-cell7 {
  grid-column: 1/5;
  border: 1px solid #000;
  border-radius: 0px 0px 30px 30px;
  text-align: center;
}
</style>