<template>
  <div class="navbar">
    <ul>
      <div class="item">
        <li><a href="https://facebook.com/Chakkapong.Max/" target="_blank">สถิติในไทย</a></li>
      </div>
      <div class="item">
        <li><a href="https://facebook.com/Chakkapong.Max/" target="_blank">สถิติวัคซีนในไทย</a></li>
      </div>
      <div class="item">
        <li><a href="https://facebook.com/Chakkapong.Max/" target="_blank">ข่าวโควิด-19</a></li>
      </div>
      <div class="item">
        <li><a href="https://facebook.com/Chakkapong.Max/" target="_blank">Infographics</a></li>
      </div>
      <div class="item">
        <li><a href="https://facebook.com/Chakkapong.Max/" target="_blank">สถิติทั่วโลก</a></li>
      </div>
      <div class="item">
        <li><a href="https://facebook.com/Chakkapong.Max/" target="_blank">ข้อควรรู้สู้ภัยโควิด-19</a></li>
      </div>
      <div class="item">
        <li><a href="https://facebook.com/Chakkapong.Max/" target="_blank">คลิปวิดีโอ</a></li>
      </div>
    </ul>
  </div>
</template>

<script>
export default {
  name: "Navbar",
};
</script>

<style scoped>
.navbar{
  margin-left: 100px;
}
ul {
  list-style-type: none;
  margin: 0;
  padding: 0;
  overflow: hidden;
}

li {
  float: left;
  border-radius: 40px;
  background: rgba(0, 0, 0,0.7);
  margin-inline: 5px;
}

li a {
  display: block;
  text-align: center;
  padding: 14px 16px;
  text-decoration: none;
  color: white;
}
</style>