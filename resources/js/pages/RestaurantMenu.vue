<template>
    <div class="tt">

        <div class="mb-5 hh">
            <h1>{{ this.$route.params.slug }}</h1>
            <hr>
        </div>

        <h2>Il nostro Menu</h2>
        <div class="ristorante mb-4 text-left" v-for="item in menu" :key="item.id">
            <div>
                <h2>{{ item.name }}</h2>
                <p>{{ item.description }}</p>
                <p @click="() => onSelect(item)"> Da
                    {{ item.price }} $</p>

            </div>




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
        const slug = this.$route.params.slug;
        this.loadPage('/api/restaurants/' + slug + '/menus');
    },
    methods: {
        loadPage(url) {
            axios.get(url)
                .then(({ data }) => {
                    this.menu = data.results;
                })
        },
        onSelect(item) {
            this.clickedItems.push(item);
        }
    },
    components: {
        BasketComponent,
    },
}

</script>

<style lang="scss" scoped>
.ristorante {

    border: 1px solid black;
    width: 600px;
    border-radius: 10px;



}

.tt {
    display: flex;
    flex-direction: column;
    align-items: center;
}

.hh {
    width: 400px;
    height: 400px;
    background-color: gray;
    border-radius: 15px;
    text-align: center
}
</style>
