<template>
    <div>
        <CategoriesComponent />
        <FooterComponent/>

    </div>
</template>

<script>

import CategoriesComponent from '../components/CategoriesComponent.vue';
import FooterComponent from '../components/FooterComponent.vue';

export default {
    name: 'App',
    components: {
        CategoriesComponent,
        FooterComponent,
    }
}
</script>

<style lang="scss" scoped>

</style>
