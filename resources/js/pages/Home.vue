<template>
    <div>
        <PictureComponent />
        <CategoriesComponent />
        <AppComponent />
    </div>
</template>

<script>
import PictureComponent from '../components/PictureComponent.vue';
import CategoriesComponent from '../components/CategoriesComponent.vue';
import AppComponent from '../components/AppComponent.vue';

export default {
    name: 'Home',
    components: {
        PictureComponent,
        CategoriesComponent,
        AppComponent
    }
}
</script>

<style lang="scss" scoped>

</style>
