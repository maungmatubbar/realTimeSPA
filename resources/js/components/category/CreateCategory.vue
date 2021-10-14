<template>
  <v-container>
      <v-form @submit.prevent="submit">
          <v-text-field
          label="Category Name*"
          v-model="form.name"
          required
          ></v-text-field>
          <v-btn color="info" type="submit" v-if="editSlug">Update</v-btn>
          <v-btn color="primary" type="submit" v-else>Create</v-btn>
      </v-form>
      <v-alert
      v-if="errors"
      :value="true"
      type="error"
      dismissible
      outline
    >
     Please give a category name.
    </v-alert>
      <v-card>
           <v-toolbar
            color="cyan"
            dark
            >
                <v-toolbar-title>Categories</v-toolbar-title>
            </v-toolbar>
            <v-list>
                <div v-for="(category,index) in categories" :key="category.id">
                    <v-list-tile>
                         
                        <v-list-tile-content>
                            <v-list-tile-title>
                            {{category.name}}
                            </v-list-tile-title>
                        </v-list-tile-content>
                        <v-list-tile-action>
                            <v-btn icon small @click="edit(index)">
                                <v-icon color="warning">edit</v-icon>
                            </v-btn>
                        </v-list-tile-action>
                         <v-list-tile-action>
                            <v-btn icon small @click="destroy(category.slug,index)">
                                <v-icon color="error">delete</v-icon>
                            </v-btn>
                        </v-list-tile-action>
                    </v-list-tile>
                    <v-divider></v-divider>
                </div>
            </v-list>
      </v-card>
  </v-container>
</template>

<script>
export default {
    data() {
        return{
            form:{
                name:null
            },
            categories:{},
            editSlug:null,
            errors:null
        }
    },
    created() {
        console.log(User.admin())
        if(!User.admin()){
            this.$router.push('/forum')
        }
        axios.get('/api/category')
        .then(res => this.categories = res.data.data)
    },
    methods:{
        submit(){
            this.editSlug?this.update():this.create()
        },
        create(){
            axios.post('/api/category',this.form)
            .then(res => {
                this.categories.unshift(res.data)
                this.form.name=null
            })
            .catch(error => this.errors = error.response.data.errors)
        },
        update(){
            axios.patch(`/api/category/${this.editSlug}`,this.form)
            .then(res => {
                this.categories.unshift(res.data)
                this.form.name=null
            })
        },
        destroy(slug,index){
            axios.delete(`/api/category/${slug}`)
            .then(res => this.categories.splice(index,1))
        },
        edit(index){
            this.form.name = this.categories[index].name
            this.editSlug = this.categories[index].slug
            this.categories.splice(index,1)
        }

    },
    
    
}
</script>

<style>

</style>