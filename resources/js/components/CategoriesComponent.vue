<template>
    <div>
        <CategoriesCarousel :categories="categories" />
    </div>
</template>

<script>
import CategoriesCarousel from './CategoriesCarousel.vue';

export default {
    name: 'CategoriesComponent',
    data() {
        return {
            categories: [],
            errorMessage: ''
        }
    },
    mounted() {
        axios.get('/api/categories')
            .then(({ data }) => {
                if (data.success) {
                    this.categories = data.results;
                } else {
                    this.errorMessage = data.error;
                }
            })
    },
    components: {
        CategoriesCarousel,
    },
}
</script>

<style lang="scss" scoped>

</style>
