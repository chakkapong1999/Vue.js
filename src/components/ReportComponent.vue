<template>
  <div class="container">
    <div class="grid-item1">
      <h3>ติดเชื้อเพิ่มขึ้น</h3>
      <h1>+ {{ formatNumber(info.new_case) }}</h1>
      <div class="total1">
        <p>
          สะสม <b> {{ formatNumber(info.total_case) }}</b>
        </p>
      </div>
    </div>
    <div class="grid-item2">
      <h3>เสียชีวิตเพิ่มขึ้น</h3>
      <h1>+ {{ formatNumber(info.new_death) }}</h1>
      <div class="total2">
        <p>
          สะสม <b> {{ formatNumber(info.total_death) }}</b>
        </p>
      </div>
    </div>
    <div class="grid-item3">
      <h3>รักษาตัวในโรงพยาบาลลดลง</h3>
      <h1>- {{ formatNumber(0) }}</h1>
      <div class="total3">
        <p>
          สะสม <b> {{ formatNumber(0) }} </b>
        </p>
      </div>
    </div>
    <div class="grid-item4">
      <h3>หายแล้วเพิ่มขึ้น</h3>
      <h1>+ {{ formatNumber(info.new_recovered) }}</h1>
      <div class="total4">
        <p>
          สะสม <b>{{ formatNumber(info.total_recovered) }} </b>
        </p>
      </div>
    </div>
    <div class="grid-item5">
      <h3>ผู้รับวัคซีน โดส 1</h3>
      <h1>+ {{ formatNumber(0) }}</h1>
      <div class="total5-6">
        <p>
          สะสม <b>{{ formatNumber(0) }}</b>
        </p>
      </div>
    </div>
    <div class="grid-item6">
      <h3>ผู้รับวัคซีน โดส 2</h3>
      <h1>+ {{ formatNumber(0) }}</h1>
      <div class="total5-6">
        <p>
          สะสม <b>{{ formatNumber(0) }} </b>
        </p>
      </div>
    </div>
    <div class="grid-item7">
      <h3>สะสม 100% ของประชากร</h3>
      <p>
        นับเฉพาะเข็มแรกฉีดแล้ว {{ formatNumber(100) }} คน
        ไม่นับรวมโดสที่สองที่ฉีดซ้ำให้คนเดิม
      </p>
    </div>
  </div>
</template>

<script>
import numeral from "numeral";
export default {
  name: "Report",
  props: {
    info: Object,
  },
  methods: {
    formatNumber(value) {
      return numeral(value).format("0,0");
    },
  },
};
</script>

<style scoped>
h1 {
  font-size: 45px;
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
  font-family: "Segoe UI", Tahoma, Geneva, Verdana, sans-serif;
}
.grid-item1 {
  grid-column: 1/3;
  grid-row: 1/3;
  border-radius: 20px 0px 0px 0px;
  text-indent: 20px;
  background: rgba(188, 52, 64, 0.7);
}
.grid-item2 {
  grid-column: 3/5;
  grid-row: 1/3;
  border-radius: 0px 20px 0px 0px;
  text-indent: 20px;
  background: rgba(100, 94, 110, 0.7);
}
.grid-item3 {
  grid-column: 1/3;
  text-indent: 20px;
  background: rgba(122, 165, 179, 0.7);
}
.grid-item4 {
  grid-column: 3/5;
  text-indent: 20px;
  background: rgba(99, 177, 110, 0.8);
}
.grid-item5 {
  grid-column: 1/3;
  text-indent: 20px;
  background: rgba(191, 170, 104, 0.8);
}
.grid-item6 {
  grid-column: 3/5;
  text-indent: 20px;
  background: rgba(191, 170, 104, 0.8);
}
.grid-item7 {
  grid-column: 1/5;
  border-radius: 0px 0px 30px 30px;
  text-align: center;
  background: rgba(100, 97, 78, 0.9);
}
.total1 {
  overflow: auto;
  background: rgba(148, 73, 75, 0.8);
}
.total2 {
  overflow: auto;
  background: rgba(86, 82, 91, 0.8);
}
.total3 {
  overflow: auto;
  background: rgba(100, 125, 132, 0.8);
}
.total4 {
  overflow: auto;
  background: rgba(87, 133, 91, 0.8);
}
.total5-6 {
  overflow: auto;
  background: rgba(135, 132, 94, 0.8);
}
</style>