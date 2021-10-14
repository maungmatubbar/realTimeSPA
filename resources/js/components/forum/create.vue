<template>
  <div>
      <v-container>
      <v-form @submit.prevent="create">
            <v-text-field
            v-model="form.title"
            label="Title"
            ></v-text-field>
            <span class="red--text" v-if="errors.title">{{ errors.title[0] }}</span>
            <v-select
            :items="categories"
            item-text="name"
            item-value="id"
            v-model="form.category_id"
            label="Category"
            ></v-select>
            <span class="red--text" v-if="errors.category_id">The category field is required</span>
            <vue-simplemde v-model="form.body"/>
            <span class="red--text" v-if="errors.body">{{ errors.body[0] }}</span>
            <v-btn  color="success" type="submit">
            Create
            </v-btn>
        </v-form>
  </v-container>
  </div>
</template>

<script>

export default {
    data(){
        return{
            form:{
                title:null,
                category_id:null,
                body:null
            },
            categories:{},
            errors:{}
        }

    },
    created(){
        axios.get('/api/category')
        .then(res => this.categories = res.data.data)
    },
    methods:{
        create(){
            axios.post('/api/question',this.form)
            .then(res => this.$router.push(res.data.path))
            .catch(error =>this.errors = error.response.data.errors)
        }
    },
    computed:{
        disabled(){
            // return !(this.form.title && this.form.category_id && this.form.body)
        }
    }

}
</script>

<style>

</style>