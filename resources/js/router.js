import Vue from "vue";

import VueRouter from "vue-router";

import Home from './pages/Home.vue';
import CategoryRestaurants from './pages/CategoryRestaurants.vue';
import NotFound from './pages/NotFound.vue';

Vue.use(VueRouter);

const router = new VueRouter({
    routes: [
        { path: '/', name: 'home', component: Home },
        { path: '/categories/:slug', name: ':slug-restaurants', component: CategoryRestaurants },
        { path: '/*', name: 'not-found', component: NotFound }
    ]
});


export default router;
