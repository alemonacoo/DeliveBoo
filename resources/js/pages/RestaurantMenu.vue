<template>
    <div class="tt">

        <div class="mb-5 hh">
            <h1>Ristorante 1</h1>

            <p>Corso Vittorio II, Milano 86704</p>

            <hr>



        </div>

        <h2>Il nostro Menu</h2>
        <div class="ristorante mb-4 text-left" v-for="item in menu" :key="item.id">
            <div>
                <h2>{{ item.name }}</h2>
                <p>{{ item.description }}</p>
                <p> Da {{ item.price }} $</p>
            </div>




        </div>



    </div>
</template>

<script>
export default {
    name: 'RestaurantMenu',
    data() {
        return {
            menu: []
        }
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
        }
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
