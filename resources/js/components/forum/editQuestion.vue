<template>
   <v-container fluid>
       <v-card>
            <v-form @submit.prevent="update">
                <v-text-field
                v-model="form.title"
                label="Title"
                required
                ></v-text-field>
                <vue-simplemde v-model="form.body"/>
                <v-card-actions>
                    <v-btn color="success" type="submit">
                        <v-icon dark>update</v-icon>Update
                    </v-btn>
                    <v-btn dark @click="cancel()">
                         <v-icon dark>remove_circle</v-icon>cancel
                    </v-btn>
                </v-card-actions>
            </v-form>
       </v-card>
  </v-container>
</template>

<script>
export default {
    props:['data'],
    data(){
        return{
            form:{
                title : null,
                body : null
            }
        }
    },
    methods:{
        cancel(){
            EventBus.$emit('cancelEditing')
        },
        update(){
            axios.patch(`/api/question/${this.form.slug}`,this.form)
            .then(res=>this.cancel())
        }
    },
    created(){
        this.form = this.data
    }
}
</script>

<style>

</style>