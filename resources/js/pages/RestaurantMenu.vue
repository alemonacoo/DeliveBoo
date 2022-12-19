<template>
    <div>
        <div v-for="item in menu" :key="item.id">
            <h5>{{ item.name }}</h5>
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

</style>
