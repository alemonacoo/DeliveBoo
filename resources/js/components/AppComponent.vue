<template>
    <div class="container-ac mt-4">

        <div class="d-flex justify-content-between align-items-baseline margin-ac">
            <div>
                <img src="../assets/img/apps_promo-wide-je.png" alt="">
            </div>

            <div>
                <h1>Il bello è prenderci gusto</h1>
                <p>Scarica l'app di Just Eat e ordina dove vuoi, qualunque cosa desideri.</p>
                <button>Scarica su App store</button>
                <button>Disponibile su Google Play</button>
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
