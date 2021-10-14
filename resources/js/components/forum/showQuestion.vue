<template>
    <v-container fluid>
        <v-card>
            <v-card-title primary-title>
                <div>
                    <div class="headline">
                        {{ data.title }}
                    </div>
                    <div class="grey--text">
                        {{ data.user }} said {{ data.created_at }}
                    </div>
                </div>
                <v-spacer></v-spacer>
                <v-btn color="success">{{replyCount}} Replies</v-btn>
            </v-card-title>
            <v-card-text v-html="body"> </v-card-text>
            <v-card-actions v-if="ownId">
                <v-btn icon small @click="edit">
                    <v-icon color="#e1b12c">edit</v-icon>
                </v-btn>
                <v-btn icon small @click="destroy">
                    <v-icon color="#c23616">delete</v-icon>
                </v-btn>
            </v-card-actions>
        </v-card>
    </v-container>
</template>

<script>
export default {
    props: ["data"],
    data() {
        return {
            ownId: User.ownId(this.data.user_id),
            replyCount:this.data.reply_count
        };
    },
    computed: {
        body() {
            return marked(this.data.body);
        }
    },
    created(){
        EventBus.$on('newReply',()=>{
            this.replyCount++
        })
        Echo.private('App.User.' + User.id())
        .notification((notification)=>{
         this.replyCount++
        })
        EventBus.$on('deleteReply',()=>{
             this.replyCount--
        })
        Echo.channel('deleteReplyChannel')
        .listen('DeleteReplyEvent',(e) => {
            this.replyCount--
        })
    },
    methods: {
        destroy(){
            axios.delete(`/api/question/${this.data.slug}`)
            .then(res => this.$router.push('/forum'))
            .catch(error =>console.log(error.response.data))
        },
        edit() {
            EventBus.$emit('startEditing');
        }
    }
};
</script>

<style></style>
