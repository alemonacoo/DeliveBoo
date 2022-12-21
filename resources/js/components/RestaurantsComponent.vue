<template>
    <div class="container">
        <div class="row">

            <!-- lista ristoranti appartenenti alla categoria cliccata -->
            <div class="col-3 my-3 text-center" v-for="restaurant in list" :key="restaurant.id">
                <div class="card" @click="showRestaurantMenu(restaurant)">
                    <img :src="restaurant.image" class="card-img-top" :alt="restaurant.name">
                    <div class="card-body">
                        <h4>{{ restaurant.name }}</h4>
                        <p>{{ restaurant.address }}</p>
                    </div>
                </div>
            </div>
        </div>
    </div>
</template>

<script>
export default {
    name: 'RestaurantsComponent',
    props: {
        list: Array
    },
    data() {
        return {

        }
    },
    methods: {
        showRestaurantMenu(restaurant) {
            this.$router.push({
                name: 'restaurant-menu',
                params: {
                    restaurant: restaurant,
                    slug: restaurant.slug
                },
            });
        }
    }
}
</script>

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
