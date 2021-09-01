<template>
    <v-card>
        <v-toolbar color="indigo" dark dense class="mt-2">
            <v-toolbar-title>
                <v-icon>categorysharp</v-icon>
                Categories
            </v-toolbar-title>
        </v-toolbar>
       <v-list>
           <div  v-for="category in categories" :key="category.id">
                <v-list-tile>
                    <v-list-tile-content>
                        <v-list-tile-title>{{ category.name }}</v-list-tile-title>
                    </v-list-tile-content>
                </v-list-tile>
                <v-divider></v-divider>
           </div>
       </v-list>
    </v-card>
</template>

<script>
export default {
    data() {
        return{
            categories:{}
        }
    },
    created() {
        axios.get('/api/category')
        .then(res=>this.categories = res.data.data)
    }
}
</script>

<style>

</style>