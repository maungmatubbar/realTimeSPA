import Vue from 'vue'
import VueRouter from 'vue-router'

Vue.use(VueRouter)

import Login from '../components/login/Login'
import Signup from '../components/login/Signup'
import Forum from '../components/forum/Forum'
import Logout from '../components/login/Logout'
import Read from '../components/forum/read'
import Create from '../components/forum/create'
import Category from '../components/category/CreateCategory'
const routes = [
    { path: '/login', component: Login },
    { path: '/signup', component: Signup },
    { path: '/forum', component: Forum, name: 'forum' },
    { path: '/category', component: Category },
    { path: '/logout', component: Logout, name: 'logout' },
    { path: '/question/:slug', component: Read, name: 'read' },
    { path: '/ask', component: Create }

]

const router = new VueRouter({
    routes, // short for `routes: routes`
    mode: 'history'
})

export default router