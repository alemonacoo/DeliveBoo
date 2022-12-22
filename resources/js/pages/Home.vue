<template>
    <div>
        <!-- <PictureComponent /> -->
        <div class="picture d-flex">
            <CategoriesComponent class="carousel" />
        </div>
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
        AppComponent,
    }
}
</script>

<style lang="scss" scoped>
.carousel {
    background-color: #eeede9;
}

.picture {
    background-image: url(../assets/img/bg_hero-wide.jpg);
    background-size: cover;
    background-position: center;
    height: 600px;
    flex-direction: column;
    justify-content: flex-end;
}
</style>
