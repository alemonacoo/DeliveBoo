<template>
    <div>
        <NavBarComponent />
        <router-view></router-view>
        <FooterComponent />
        <CooFooterComponent />
    </div>
</template>

<script>
import NavBarComponent from '../components/NavBarComponent.vue';
import FooterComponent from '../components/FooterComponent.vue';
import CooFooterComponent from '../components/CooFooterComponent.vue';


export default {
    name: 'App',
    components: {
        NavBarComponent,
        FooterComponent,
        CooFooterComponent
    }
}
</script>

<style>

</style>
