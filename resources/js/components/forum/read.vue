<template>
    <div v-if="question">
        <edit-question v-if="editing" :data= question></edit-question>
        <div v-else>
             <show-question :data = question
              v-if="question"></show-question>
             <v-container>
                  <replies :question = "question" ></replies>
                 <new-reply v-if="loggedIn" :questionSlug="question.slug"></new-reply>
                 <div class="mt-4">
                     <router-link to="/login">Login to reply</router-link>
                 </div>
             </v-container>
        </div>
    </div>
</template>

<script>
import ShowQuestion from './showQuestion.vue'
import EditQuestion from './editQuestion.vue'
import Replies from '../reply/replies'
import NewReply from '../reply/newReply'
    export default {
        components:{ShowQuestion,EditQuestion,Replies,NewReply},
        data(){
            return{
                question:null,
                editing:false,
            }
            
        },
        created(){
            this.listen();
            this.getQuestion();
        },
        computed:{
            loggedIn(){
                return User.loggedIn()
            }
        },
        methods: {
            listen(){
                EventBus.$on('startEditing',()=>{
                    this.editing=true;
                });
                EventBus.$on('cancelEditing',()=>{
                    this.editing=false
                })
            },
            getQuestion(){
                axios.get(`/api/question/${this.$route.params.slug}`)
                .then(res => this.question = res.data.data)
            }
        }
    }
</script>

<style>

</style>