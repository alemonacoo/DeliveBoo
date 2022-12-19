<template>
    <div>
        <NavBarComponent />
        <router-view></router-view>
        <FooterComponent />
    </div>
</template>

<script>
import NavBarComponent from '../components/NavBarComponent.vue';
import FooterComponent from '../components/FooterComponent.vue';

export default {
    name: 'App',
    components: {
        NavBarComponent,
        FooterComponent
    }
}
</script>

<style lang="scss" scoped>

</style>
