<template>
    <div class="container">
        <div v-for="restaurant in restaurants" :key="restaurant.id">
            <div class="card" @click="showRestaurant(restaurant.id)">
                <h4>{{ restaurant.name }}</h4>
            </div>
        </div>
    </div>
</template>

<script>
export default {
    name: 'RestaurantsComponent',
    data() {
        return {
            restaurants: [],
            errorMessage: ''
        }
    },
    mounted() {

        axios.get('/api/restaurants')
            .then(({ data }) => {
                if (data.success) {
                    this.restaurants = data.results;
                } else {
                    this.errorMessage = data.error;
                }
            })
    },
    methods: {
        showRestaurant(id) {
            console.log(id);
            axios.get('api/restaurants/' + id)
                .then(({ data }) => {
                    console.log(data);
                })
        }
    }
}
</script>
