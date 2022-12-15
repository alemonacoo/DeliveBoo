<template>
    <div class="container">
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
</template>

<script>
export default {
    name: 'CategoriesCarousel',
    props: {
        categories: Array,
    },
    methods: {
        showCategoryRestaurants(id) {
            console.log(id);
            axios.get('/api/categories/' + id + '/restaurants/')
                .then(({ data }) => {
                    console.log(data);
                })
        }
    }

}
</script>

<style lang="scss" scoped>

</style>
