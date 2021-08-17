require('./bootstrap');


window.Vue = require('vue');
import Vue from 'vue'
import Vuetify from 'vuetify'
import User from './helpers/User'



Vue.use(Vuetify)
window.User = User
    //console.log(User.loggedIn());

//Logout EventBus use

window.EventBus = new Vue();

//Vue.component('example-component', require('./components/ExampleComponent.vue').default);

Vue.component('AppHome', require('./components/AppHome').default)

import router from './Router/router'
const app = new Vue({
    el: '#app',
    router
});