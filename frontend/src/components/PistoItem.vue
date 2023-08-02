<template>
  <ul>
    <li class="nameClass">{{ pistolName }}</li>
    <li><img :src="imgSrc" /></li>
  </ul>
</template>

<script>
export default {
  props: {
    pistolName: {
      type: String,
    },
    imgSrc: {
      type: String,
    },
  },
};
</script>

<style>
.nameClass {
  color: blue;
}
</style>
