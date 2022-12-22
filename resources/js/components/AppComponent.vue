<template>
    <div class="container-ac pt-4">

        <div class="d-flex justify-content-between align-items-baseline margin-ac">
            <div>
                <img src="../assets/img/apps_promo-wide-je.png" alt="">
            </div>

            <div>
                <h1>Il bello è prenderci gusto</h1>
                <p>Scarica l'app di Deliveroo e ordina dove vuoi, qualunque cosa desideri.</p>
                <button><i class="bi bi-google-play"></i> Disponibile su Google</button>
                <button><i class="bi bi-apple"></i> Scarica su App Store</button>
            </div>


        </div>



    </div>
</template>

<script>
export default {
    name: 'AppComponent'

}
</script>

<style lang="scss" scoped>
img {
    width: 400px;
}

.margin-ac {
    max-width: 1100px;
    margin: 0 auto;
}

.container-ac {
    background-color: white;
}

button {
    border: 0;
    background-color: black;
    color: white;
    width: 200px;
    border-radius: 15px;
}
</style>
