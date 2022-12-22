<template>
    <div class="container">

        <!-- componente categorie -->
        <div class="row" @click="zero()">
            <div class="col">
                <CategoriesComponent />
            </div>
        </div>

        <!-- lista ristoranti appartenenti alla categoria cliccata -->
        <div class="container mb-4">
            <div class="row justify-content-center" v-for="restaurant in restaurants" :key="restaurant.id">
                <div class="col-8 my-3 text-center">
                    <div class="card" @click="showRestaurantMenu(restaurant)">
                        <img :src="restaurant.image" class="card-img-top" :alt="restaurant.name" />
                        <div class="card-body">
                            <h4>{{ restaurant.name }}</h4>
                            <p>{{ restaurant.address }}</p>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</template>

<script>
import CategoriesComponent from "../components/CategoriesComponent.vue";

export default {
    name: "RestaurantList",
    data() {
        return {
            restaurants: [],
        };
    },
    mounted() {
        const category_id = this.$route.params.id;
        this.loadPage("/api/categories/" + category_id + "/restaurants/");
    },
    methods: {
        loadPage(url) {
            axios.get(url).then(({ data }) => {
                this.restaurants = data.results;
                console.log(this.restaurants);
            });
        },
        showRestaurantMenu(restaurant) {
            this.$router.push({
                name: 'restaurant-menu',
                params: {
                    restaurant: restaurant,
                    slug: restaurant.slug
                },
            });
        },
        zero() {
            this.restaurants = [];
        },
    },
    components: {
        CategoriesComponent,
    },
};
</script>

<style lang="scss" scoped>
.card {
    flex-direction: row;
    height: 100%;
    cursor: pointer;
    border: none;

    .card-body {
        text-align: left;
        display: flex;
        flex-direction: column;
        justify-content: center;
        padding: 1rem;

        h4 {
            font-size: 1.3rem;
            font-weight: bolder;
        }
    }

    img {
        height: 100%;
        width: 30%;
        object-fit: cover;
        border-top-left-radius: 10px;
        border-top-right-radius: 10px;
        padding: 0.5rem;
        border-radius: 13px;
    }
}
</style>

