<template>
    <div class="container-fluid pt-4">

        <div class="d-flex justify-content-around align-items-center margin-ac">
            <div>
                <img src="../assets/img/apps_promo-wide-je.png" alt="">
            </div>

            <div class="store">
                <h1>Il bello è prenderci gusto</h1>
                <p>Scarica l'app di Deliveroo e ordina dove vuoi, qualunque cosa desideri.</p>
                <div class="store">
                    <button class="my-3"><i class="bi bi-google-play"></i> Disponibile su Google</button>
                    <button class="my-3"><i class="bi bi-apple"></i> Scarica su App Store</button>
                </div>
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
    display: flex;
    padding-bottom: 20px;

}

.container-fluid {
    background-color: white;
}

button {
    border: 0;
    background-color: black;
    color: white;
    width: 200px;
    border-radius: 15px;
}

@media only screen and (max-width: 600px) {
    .margin-ac {
        display: flex;
        flex-direction: column;
        align-items: center !important;
    }

    .store {
        text-align: center;
    }
}

@media only screen and (max-width: 768px) {
    .margin-ac {
        display: flex;
        flex-direction: column;
        align-items: center !important;
    }

    .store {
        text-align: center;
    }
}
</style>
