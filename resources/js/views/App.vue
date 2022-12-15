<template>
    <div>
        <NavBarComponent />
        <PictureComponent />
        <CategoriesComponent />

    </div>
</template>

<script>
import NavBarComponent from '../components/NavBarComponent.vue';
import PictureComponent from '../components/PictureComponent.vue';
import CategoriesComponent from '../components/CategoriesComponent.vue';



export default {
    name: 'App',
    components: {
        NavBarComponent,
        CategoriesComponent,
        PictureComponent

    }
}
</script>

<style lang="scss" scoped>

</style>
