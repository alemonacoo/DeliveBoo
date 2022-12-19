<template>
    <div>
        <div v-for="item in menu" :key="item.id">
            <h5 @click="() => onSelect(item)">
                {{ item.name }}
            </h5>
        </div>
        <span>{{ clickedItems }}</span>

        <BasketComponent :selectedItems="clickedItems" />
    </div>
</template>

<script>
import BasketComponent from '../components/BasketComponent.vue';


export default {
    name: 'RestaurantMenu',
    data() {
        return {
            menu: [],
            clickedItems: [],
        }
    },
    props: {

    },
    mounted() {
        console.log('ristorante slug:', this.$route.params.slug);
        const slug = this.$route.params.slug;
        this.loadPage('/api/restaurants/' + slug + '/menus');
    },
    methods: {
        loadPage(url) {
            console.log(url);
            axios.get(url)
                .then(({ data }) => {
                    console.log(data);
                    this.menu = data.results;
                })
        },
        onSelect(item) {
            this.clickedItems.push(item);
            console.log(this.clickedItems);
        }
    },
    components: {
        BasketComponent,
    },
}
</script>

<style lang="scss" scoped>

</style>
