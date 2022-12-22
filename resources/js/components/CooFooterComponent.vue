<template>
    <div class="container-fluid mt-5 ">
        <div class="row">
            <div class="col">

                <h3>Scarica l'app</h3>
                <div class="d-flex">
                    <button class="d-flex align-items-center"><i class="bi bi-google-play"></i> Disponibile su
                        Google</button>
                    <button class="d-flex align-items-center"><i class="bi bi-apple"></i> Scarica su App Store</button>

                </div>


            </div>
            <div class="col">

                <h3>Feedback</h3>
                <p>Aiutaci a migliorare il nostro sito</p>
                <p>Invia feedback</p>

            </div>

            <div class="col">

                <h3>Seguici su:</h3>
                <div class="d-flex social">

                    <p><i class="bi bi-facebook"></i></p>
                    <p><i class="bi bi-instagram"></i></p>
                    <p><i class="bi bi-twitter"></i></p>

                </div>


            </div>



        </div>


    </div>
</template>

<script>
export default {
    name: 'CooFooterComponent'

}
</script>

<style lang="scss" scoped>
.row {
    max-width: 1200px;
    margin: 0 auto;
}

.col {
    display: flex;
    flex-direction: column;
}

button {
    border: 0;
    background-color: black;
    color: white;
    width: 150px;
    margin: 5px;
}

.social {
    column-gap: 50px;

    i {
        font-size: 30px;
    }
}

@media only screen and (max-width: 600px) {
    .container-fluid {
        padding-bottom: 90px;

        .row {
            flex-direction: column !important;

            .col {
                flex-direction: column !important;
                margin-bottom: 10px;
                align-items: center;
            }
        }
    }

}

/* Medium devices (landscape tablets, 768px and up) */
@media only screen and (max-width: 768px) {
    .row {
        flex-direction: column !important;

        .col {
            flex-direction: column !important;
            margin-bottom: 10px;
            align-items: center;
        }
    }
}
</style>
