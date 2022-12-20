import Vue from "vue";

import VueRouter from "vue-router";

import Home from './pages/Home.vue';
import RestaurantsList from './pages/RestaurantsList.vue';
import RestaurantMenu from './pages/RestaurantMenu.vue';
import OrderComplete from './pages/OrderComplete.vue';
import NotFound from './pages/NotFound.vue';

Vue.use(VueRouter);

const router = new VueRouter({
    routes: [
        { path: '/', name: 'home', component: Home },
        { path: '/category/:id', name: 'restaurants-list', component: RestaurantsList },
        { path: '/restaurant/:slug', name: 'restaurant-menu', component: RestaurantMenu },
        { path: '/order-complete', name: 'order-sent', component: OrderComplete },
        { path: "/*", name: "NotFound", component: NotFound }
    ]
});


export default router;
