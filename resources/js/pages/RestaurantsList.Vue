<template>
<<<<<<< HEAD
    <div class="container">

        <!-- componente categorie -->
        <div class="row" @click="zero()">
            <div class="col">
                <CategoriesComponent />
=======
    <div>
        <div class="container">
            <!-- categories section -->
            <div class="row" @click="zero()">
                <div class="col">
                    <CategoriesComponent />
                </div>
>>>>>>> origin/master
            </div>
        </div>

        <!-- lista ristoranti appartenenti alla categoria cliccata -->
        <div class="container mb-4">
            <div class="row">
<<<<<<< HEAD
                <div class="col-3 my-3 text-center" v-for="restaurant in restaurants" :key="restaurant.id">
                    <div class="card" @click="showRestaurantMenu(restaurant)">
                        <img :src="restaurant.image" class="card-img-top" :alt="restaurant.name">
=======
                <div
                    class="col-3 my-3 text-center"
                    v-for="restaurant in restaurants"
                    :key="restaurant.id"
                >
                    <div
                        class="card"
                        @click="showRestaurantMenu(restaurant.slug)"
                    >
                        <img
                            :src="restaurant.image"
                            class="card-img-top"
                            :alt="restaurant.name"
                        />
>>>>>>> origin/master
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
<<<<<<< HEAD
        showRestaurantMenu(restaurant) {
            this.$router.push({
                name: 'restaurant-menu',
                params: {
                    restaurant: restaurant,
                    slug: restaurant.slug
                },
            });
=======
        showRestaurantMenu(slug) {
            this.$router.push("/restaurant/" + slug);
>>>>>>> origin/master
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

<<<<<<< HEAD
<style lang="scss" scoped>
.card {
    height: 100%;
    cursor: pointer;
    border-radius: 10px;

    .card-body {
        text-align: center;
        padding: 0;
        padding-top: 0.5rem;
    }

    img {
        height: 8rem;
        object-fit: cover;
        border-top-left-radius: 10px;
        border-top-right-radius: 10px;
    }
}
</style>

=======
<style lang="scss" scoped></style>
>>>>>>> origin/master
