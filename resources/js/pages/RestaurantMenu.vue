<template>
    <div class="container">
        <div class="tt">

            <div class="my-5 hh">
                <h1>{{ this.$route.params.slug }}</h1>
                <hr>
            </div>

            <div class="row mb-3">
                <h2>Il nostro Menu</h2>
            </div>
            <div class="row justify-content-between">
                <div class="col-8">
                    <div class="ristorante mb-4 text-left p-3" v-for="item in menu" :key="item.id"
                        @click="() => onSelect(item)">
                        <div>
                            <h2>{{ item.name }}</h2>
                            <p>{{ item.description }}</p>
                            <p> Da {{ item.price }} $</p>

                        </div>
                    </div>
                </div>
                <div class="col-4">
                    <BasketComponent :selectedItems="clickedItems" />
                </div>
            </div>
        </div>
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
    cursor: pointer;
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
