<template>
    <div class="text-xs-center">
    <v-menu offset-y>
      <template v-slot:activator="{ on }">
        <v-btn icon  v-on="on">
            <v-icon :color="color">notifications</v-icon>{{ unreadcount }}
        </v-btn>
      </template>
      <v-list>
        <v-list-tile v-for="item in unread" :key="item.id">
          <router-link :to="item.path"><v-list-tile-title @click="readIt(item)">{{item.question}}</v-list-tile-title></router-link>
        </v-list-tile>
        <v-divider></v-divider>

         <v-list-tile v-for="item in read" :key="item.id">
          <v-list-tile-title>{{item.question}}</v-list-tile-title>
        </v-list-tile>
      </v-list>
    </v-menu>
  </div>
  
</template>

<script>
export default {
    data(){
        return {
            read:{},
            unread:{},
            unreadcount:0,
        }
    },
    created() {
        if(User.loggedIn()){
            this.getNotifications()
        }
        Echo.private('App.User.' + User.id())
          .notification((notification)=>{
            this.unread.unshift(notification)
            this.unreadcount++;
          })
    },
    methods: {
        getNotifications(){
            axios.post('/api/notifications')
            .then(res => {
                this.read = res.data.read
                this.unread = res.data.unread
                this.unreadcount = res.data.unread.length
            })  
        },
        readIt(notification){
          axios.post('/api/markAsRead',{id:notification.id})
          .then(res => {
            this.unread.splice(notification,1)
            this.read.push(notification)
            this.unreadcount--
          })
         }
    },
    computed: {
      color(){
        return this.unreadcount > 0 ? 'red' : 'white'
      }
    }
}
</script>

<style>

</style>