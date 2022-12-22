<template>
    <div class="container">

        <!-- 'carosello' categorie caricate axios -->
        <!-- <div class="row"> -->
        <carousel :perPageCustom="[[768, 3], [1024, 6]]" :navigationEnabled="true" :paginationActiveColor="'#fd7e00'"
            :paginationPadding="4" :paginationColor="'#c5c5c5'" class="pb-2">
            <slide v-for="category in categories" :key="category.id" class="slide pt-2 px-1">
                <div class="card" :class="{ active: category.id === activeIndex }"
                    @click="showCategoryRestaurants(category.id)">
                    <img :src="category.image" class="card-img-top" :alt="category.name">
                    <div class="card-body px-1">
                        <h5>{{ category.name }}</h5>
                    </div>
                </div>
            </slide>
        </carousel>

        <!-- </div> -->
        <!-- </div> -->

        <!-- compoenente ristoranti -->
        <div class="row">
            <RestaurantsComponent :list="restaurants" />
        </div>
    </div>
</template>

<script>
import RestaurantsComponent from './RestaurantsComponent.vue';
import { Carousel, Slide } from 'vue-carousel';

export default {
    name: 'CategoriesCarousel',
    props: {
        categories: Array,
    },
    data() {
        return {
            restaurants: [],
            activeIndex: ''
        }
    },
    methods: {
        showCategoryRestaurants(id) {
            this.activeIndex = id;
            axios.get('/api/categories/' + id + '/restaurants/')
                .then(({ data }) => {
                    this.restaurants = data.results;
                })
            this.$router.push('/category/' + id);
        }
    },
    components: {
        RestaurantsComponent,
        Carousel,
        Slide
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

        h5 {
            font-size: 1rem !important;
        }
    }

    img {
        height: 5rem;
        object-fit: cover;
        border-top-left-radius: 10px;
        border-top-right-radius: 10px;
    }
}

.active {
    filter: drop-shadow(2px 4px 6px grey);
    color: #ef9b6b;
}

.card:hover {
    position: relative;
    bottom: 5px;
}
</style>
