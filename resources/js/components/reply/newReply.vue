<template>
  <div class="mt-3">
          <label for=""><strong>Reply:</strong></label>
          <vue-simplemde v-model="body" ref="markdownEditor"/>
          <v-btn dark color="#006266" small @click="submit">
              <v-icon>send</v-icon>
          </v-btn>
  </div>
</template>

<script>
export default {
    props:['questionSlug'],
    data () {
        return {
            body:""
        }
    },
    methods:{
        submit(){
            axios.post(`/api/question/${this.questionSlug}/reply`,{body:this.body})
            .then(res=>{
                this.body=""
                EventBus.$emit('newReply',res.data.reply)
                window.scrollTo(0,0);
            })
        },

    }
}
</script>

<style>

</style>