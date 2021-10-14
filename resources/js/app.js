require('./bootstrap');


window.Vue = require('vue');
import Vue from 'vue'
import Vuetify from 'vuetify'
import User from './helpers/User'
import Exception from './helpers/Exception';
import marked from 'marked'
window.marked = marked

import VueSimplemde from 'vue-simplemde'
Vue.component('vue-simplemde', VueSimplemde)


Vue.use(Vuetify)
window.User = User
window.Exception = Exception
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