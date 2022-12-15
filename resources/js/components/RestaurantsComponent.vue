<template>
    <div class="container">
        <div class="row">
            <div class="col-3 my-3 text-center" v-for="restaurant in list" :key="restaurant.id">
                <div class="card">
                    <img :src="restaurant.image" class="card-img-top" :alt="restaurant.name">
                    <div class="card-body">
                        <h4>{{ restaurant.name }}</h4>
                    </div>
                </div>
            </div>
        </div>

        <!-- <div v-else>
            <div v-for="restaurant in restaurants" :key="restaurant.id">
                <div class="card" @click="showRestaurant(restaurant.id)">
                    <h4>{{ restaurant.name }}</h4>
                </div>
            </div>
        </div> -->
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
            restaurants: [],
            errorMessage: ''
        }
    },
    // mounted() {

    //     axios.get('/api/restaurants')
    //         .then(({ data }) => {
    //             if (data.success) {
    //                 this.restaurants = data.results;
    //             } else {
    //                 this.errorMessage = data.error;
    //             }
    //         })
    // },
    // methods: {
    //     showRestaurant(id) {
    //         console.log(id);
    //         axios.get('api/restaurants/' + id)
    //             .then(({ data }) => {
    //                 console.log(data);
    //             })
    //     }
    // }
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
