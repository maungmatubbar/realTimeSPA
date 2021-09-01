<template>
    <div>
        <vue-simplemde v-model="reply.reply"/>
          <v-btn dark color="#0097e6" small @click="update">
              <v-icon >save</v-icon>
          </v-btn>
          <v-btn dark color="#e84118" small @click="cancel">
              <v-icon>cancel</v-icon>
          </v-btn>
    </div>
</template>

<script>
export default {
    props:['reply'],
    methods:{
        cancel(){
            EventBus.$emit('cancelEditing')
        },
        update(){
           axios.patch(`/api/question/${this.reply.question_slug}/reply/${this.reply.id}`,{body:this.reply.reply})
           .then(res=>
               this.cancel()
           )
        }
    }
}
</script>

<style>

</style>