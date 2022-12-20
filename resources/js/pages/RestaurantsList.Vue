<template>
    <div>
        <div class="container">
            <!-- categories section -->
            <div class="row" @click="zero()">
                <div class="col">
                    <CategoriesComponent />
                </div>
            </div>

            <!-- restaurants section -->
            <div class="row">
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
        showRestaurantMenu(slug) {
            this.$router.push("/restaurant/" + slug);
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

<style lang="scss" scoped></style>
