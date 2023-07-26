<template>
  <div class="pistols">
    <h1>Pistols</h1>

    <pistol-item pistolName="Desert Eagle" imgSrc="https://oqtagonmedia-1224e.kxcdn.com/media/catalog/product/cache/627d1c6dd6ad1c8dba646f43d0a4e772/7/4/7459_1_.jpg.webp"></pistol-item>
    <pistol-item pistolName="Carpati" imgSrc="https://jurnalulph.ro/images/stories/2016/februarie/17/glock.jpg"></pistol-item>
  </div>
</template>
<script>
import PistolItem from "../components/PistoItem.vue";

export default {
  components: {
    PistolItem,
  },
};
</script>
