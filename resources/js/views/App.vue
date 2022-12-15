<template>
    <div>
        <NavBarComponent />
        <PictureComponent />
        <CategoriesComponent />
        <AppComponent />
    </div>
</template>

<script>
import NavBarComponent from '../components/NavBarComponent.vue';
import PictureComponent from '../components/PictureComponent.vue';
import CategoriesComponent from '../components/CategoriesComponent.vue';
import AppComponent from '../components/AppComponent.vue';



export default {
    name: 'App',
    components: {
        NavBarComponent,
        CategoriesComponent,
        PictureComponent,
        AppComponent
    }
}
</script>

<style lang="scss" scoped>

</style>
