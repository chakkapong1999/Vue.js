<template>
  <div class="topic">
    <h1>สถิติผู้ติดเชื้อโควิด-19 ในไทย</h1>
    <p>ข้อมูลอัปเดตล่าสุด: {{date}} | {{time}} น.</p>
  </div>
</template>

<script>
export default {
  name: 'Topic',
  props: {
    time: String,
    date: String
  }
}
</script>

<style>
.topic {
  line-height: 1.5;
  letter-spacing: 0px;
  word-spacing: 0px;
  text-align: center;
  text-decoration: none;
  text-transform: none;
  color: white;
  font-family: "Times New Roman", Times, serif;
}
</style>