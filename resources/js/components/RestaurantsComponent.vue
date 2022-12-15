<template>
    <div class="container">
        <div class="row" v-for="restaurant in list" :key="restaurant.id">
            <div class="col-3 text-center">
                <div class="card">
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
