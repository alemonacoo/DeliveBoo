<template>
    <div>
        <CategoriesComponent />
        <BasketComponent/>
        <FooterComponent/>

    </div>
</template>

<script>

import CategoriesComponent from '../components/CategoriesComponent.vue';
import FooterComponent from '../components/FooterComponent.vue';
import BasketComponent from '../components/BasketComponent.vue';

export default {
    name: 'App',
    components: {
        CategoriesComponent,
        FooterComponent,
        BasketComponent
    }
}
</script>

<style lang="scss" scoped>

</style>
