<template>
    <div class="container">
        <div class="row">
            <div class="col-3 my-3 text-center" v-for="restaurant in list" :key="restaurant.id">
                <div class="card" @click="showRestaurantMenu(restaurant.slug)">
                    <img :src="restaurant.image" class="card-img-top" :alt="restaurant.name">
                    <div class="card-body">
                        <h4>{{ restaurant.name }}</h4>
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
        // showRestaurantMenu(slug) {
        //     console.log(slug);
        //     axios.get('/api/restaurants/' + slug + '/menus')
        //         .then(({ data }) => {
        //             console.log(data);
        //         })
        // },
        showRestaurantMenu(slug) {
            this.$router.push('/restaurant/' + slug);
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
