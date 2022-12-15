<template>
    <div>
        <NavBarComponent />
        <CategoriesComponent />

    </div>
</template>

<script>
import NavBarComponent from '../components/NavBarComponent.vue';
import CategoriesComponent from '../components/CategoriesComponent.vue';


export default {
    name: 'App',
    components: {
        NavBarComponent,
        CategoriesComponent,

    }
}
</script>

<style lang="scss" scoped>

</style>
