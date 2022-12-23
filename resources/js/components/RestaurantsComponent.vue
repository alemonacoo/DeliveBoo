<template>
    <div class="container">
        <div class="row justify-content-center" v-for="restaurant in list" :key="restaurant.id">

            <!-- lista ristoranti appartenenti alla categoria cliccata -->
            <div class="col-8 my-3 text-center">
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
    flex-direction: row;
    height: 100%;
    cursor: pointer;
    border-radius: 10px;
    border: none;
    box-shadow: 2px 5px 10px rgba(52, 52, 52, 0.18);


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
