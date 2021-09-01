<template>
    <v-card class="mt-2">
        <v-card-title primary-title>
            <div>
                <router-link :to="data.path"><h3 class="headline md-0">{{data.title}}</h3></router-link>
                <div class="grey--text"> {{ data.user }} said {{data.created_at}}</div>
            </div>
        </v-card-title>
        <v-card-text v-html="body"></v-card-text>
          <!-- {{ data.body }} -->
    </v-card>
</template>

<script>
    export default {
        props:['data'],
        computed:{
            body() {
                return marked(this.data.body);
            }
        },
    }
</script>

<style>

</style>