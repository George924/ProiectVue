<template>
  <div class="pistols">
    <h1>Pistols</h1>

    <ul>
      <li v-for="(pistol) in pistols" :key="pistol.id">
        
        <pistol-item :pistolName=pistol.nume :imgSrc=pistol.ImgSource></pistol-item>
       
      </li>
    </ul>
  </div>
</template>
<script>
import axios from  "axios";
import PistolItem from "../components/PistoItem.vue";

export default {
  data() {
    return {
      pistols: [],
      
    };
  },
  async mounted() {
    const response = await axios.get("http://localhost:3002/pistols/");
    this.pistols = response.data.data;
    console.log(this.pistols);
  },
  components: {
    PistolItem,
  },
};
</script>
