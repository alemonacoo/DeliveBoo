<template>
    <div class="container-ac">

        <div>
            <PictureComponent />
        </div>

        <div class="tt">
            <!-- card ristorante -->
            <div class="my-5 hh">
                <h1>{{ this.$route.params.restaurant.name }}</h1>
                <p>{{ $route.params.restaurant.address }}</p>
                <hr>
                <img :src="this.$route.params.restaurant.image" :alt="this.$route.params.restaurant.name">

            </div>

            <!-- lista piatti -->
            <div class="row mb-3">
                <h2>Il nostro Menu</h2>
            </div>
            <div class="row justify-content-between">
                <div class="col-8">
                    <div class="ristorante mb-4 text-left p-3" v-for="item in menu" :key="item.id">
                        <div class="menu d-flex align-items-center justify-content-between">

                            <div class="d-flexx">
                                <h2>{{ item.name }}</h2>
                                <p>{{ item.description }}</p>
                                <p> Da {{ item.price }} $</p>
                                <button @click="() => onSelect(item)"> Aggiungi al carrello</button>

                            </div>



                            <div>
                                <img :src="item.image" alt="">
                            </div>

                        </div>
                    </div>
                </div>

                <!-- componente carrello -->
                <div class="col-4">
                    <BasketComponent :selectedItems="clickedItems" />
                </div>
            </div>
        </div>
    </div>
</template>

<script>
import BasketComponent from "../components/BasketComponent.vue";
import PictureComponent from "../components/PictureComponent.vue";




export default {
    name: "RestaurantMenu",
    data() {
        return {
            menu: [],
            clickedItems: [],
        };
    },
    props: {},
    mounted() {
        const slug = this.$route.params.restaurant.slug;
        this.loadPage("/api/restaurants/" + slug + "/menus");
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
        PictureComponent

    },
};
</script>

<style lang="scss" scoped>
.ristorante {
    box-shadow: 5px 5px 5px 1px black;
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
    border-radius: 15px;
    text-align: center;
    box-shadow: 5px 5px 5px 1px black;
    cursor: pointer;
    border-radius: 10px;
    background-color: aliceblue;
}

button {
    border-radius: 15px;
    width: 150px;
    border: 0;
    background-color: #f36805;
    color: white;
}

img {
    width: 80%;
    height: 40%;
    border-radius: 15px;
}

.menu {
    column-gap: 50px;

    img {
        width: 100px;
    }
}

.d-flexx {
    display: flex;
    flex-direction: column;

}
</style>
