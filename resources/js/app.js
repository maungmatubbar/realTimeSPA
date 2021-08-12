require('./bootstrap');

window.Vue = require('vue');
import Vue from 'vue'
import Vuetify from 'vuetify'

Vue.use(Vuetify)

//Vue.component('example-component', require('./components/ExampleComponent.vue').default);

Vue.component('AppHome', require('./components/AppHome').default)

import router from './Router/router'
const app = new Vue({
    el: '#app',
    router
});