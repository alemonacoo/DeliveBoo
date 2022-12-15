<template>
    <div class="container">
        <div v-if="categoryRestaurants.length <= 0">
            <div class="row">
                <div class="col-2" v-for="category in categories" :key="category.id">
                    <div class="card" @click="showCategoryRestaurants(category.id)">
                        <img :src="category.image" class="card-img-top" :alt="category.name">
                        <div class="card-body">
                            <h5 class="card-title">{{ category.name }}</h5>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <div v-else>
            <RestaurantsComponent :list="categoryRestaurants" />
            <button @click="categoryRestaurants = []">Categorie</button>
        </div>
    </div>
</template>

<script>
import RestaurantsComponent from './RestaurantsComponent.vue'

export default {
    name: 'CategoriesCarousel',
    props: {
        categories: Array,
    },
    data() {
        return {
            categoryRestaurants: [],
        }
    },
    methods: {
        showCategoryRestaurants(id) {
            console.log(id);
            axios.get('/api/categories/' + id + '/restaurants/')
                .then(({ data }) => {
                    console.log(data);
                    this.categoryRestaurants = data.results;
                    console.log(categoryRestaurants);
                })
        }
    },
    components: {
        RestaurantsComponent
    }

}
</script>

<style lang="scss" scoped>

</style>
