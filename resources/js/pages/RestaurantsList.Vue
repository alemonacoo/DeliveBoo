<template>
    <div>
        <div class="container">
            <CategoriesComponent />
            <div class="row">
                <div class="col-3 my-3 text-center" v-for="restaurant in restaurants" :key="restaurant.id">
                    <div class="card" @click="showRestaurantMenu(restaurant.slug)">
                        <img :src="restaurant.image" class="card-img-top" :alt="restaurant.name">
                        <div class="card-body">
                            <h4>{{ restaurant.name }}</h4>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</template>

<script>
import CategoriesComponent from '../components/CategoriesComponent.vue';

export default {
    name: 'RestaurantList',
    data() {
        return {
            restaurants: [],
            // active: ''
        }
    },
    mounted() {
        console.log('categoria id:', this.$route.params.id);
        const category_id = this.$route.params.id;
        this.loadPage('/api/categories/' + category_id + '/restaurants/');
    },
    methods: {
        loadPage(url) {
            console.log(url);
            axios.get(url)
                .then(({ data }) => {
                    console.log(data);
                    this.restaurants = data.results;
                })
        },
        showRestaurantMenu(slug) {
            console.log(slug);
            this.$router.push('/restaurant/' + slug);
        }
    },
    components: {
        CategoriesComponent,
    }
}
</script>

<style lang="scss" scoped>

</style>

