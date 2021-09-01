<template>
    <div class="mt-3">
        <v-card>
            <v-card-title>
                <div class="headline"><v-icon color="#353b48">face</v-icon> {{data.user}}</div>
                <div class="ml-2">said {{data.created_at}}</div>
                <v-spacer></v-spacer>
                <like :content="data"></like>
            </v-card-title>
           
            <v-divider></v-divider>

            <edit-reply :reply="data" v-if="editing"></edit-reply>
            <v-card-text v-else v-html="reply"></v-card-text>

            <v-divider></v-divider>
            
            <div v-if="!editing">
                <v-card-actions v-if="own">
                    <v-btn icon small @click="edit">
                        <v-icon color="#5758BB">edit</v-icon>
                    </v-btn>
                    <v-btn icon small @click="destroy">
                        <v-icon color="#ED4C67">delete</v-icon>
                    </v-btn>
                </v-card-actions>
            </div>
        </v-card>
    </div>
</template>

<script>
import EditReply from './editReply'
import Like from '../likes/like.vue'
export default {
    props:['data','index'],
    components:{EditReply,Like},
    data(){
        return {
            editing:false
        }
    },
    created(){
        this.listen();
    },
    computed: {
        own(){
            return User.ownId(this.data.user_id)
        },
        reply(){
            return marked(this.data.reply)
        },
    },
    methods: {
        destroy(){
            EventBus.$emit('deleteReply',this.index)
        },
        edit(){
            this.editing=true
        },
        listen(){
            EventBus.$on('cancelEditing',()=>{
                this.editing=false
            })
        }
    }

}
</script>

<style>

</style>