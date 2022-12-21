<template>
    <div class="container d-flex">
        <div class="row flex-grow-1 align-items-center">
            <div class="col d-flex justify-content-center">
                <div class="card shadow">
                    <div class="card-body">
                        <h5 class="card-title text-center mb-4">Ordine N. {{ this.$route.params.id }} Confermato</h5>
                        <h6 class="card-subtitle mb-2 text-muted text-center">Il Bello Comincia Ora</h6>
                        <div class="truck-container d-flex justify-content-center">
                            <i class="bi bi-truck" id="truck"></i>
                        </div>
                        <!-- <div class="text-center">
                            <a href="/" class="card-link">Torna alla Home</a>
                        </div> -->
                    </div>
                </div>
            </div>
        </div>
    </div>
</template>

<script>
export default {
    name: 'OrderComplete'
}
</script>

<style lang="scss" scoped>
.container {
    height: 500px;

    .card {
        width: 50%;
        border-radius: 1.5rem;

        .card-title {
            font-weight: 600;
            font-size: 2rem;
            color: #00ccbc;
        }

        .card-subtitle {
            font-size: 1.2rem;
            font-weight: 900;
        }

        .card-link {
            text-align: center;
        }
    }
}

.truck-container {
    display: flex;

    #truck {
        font-size: 5rem;
        color: #00ccbc;
        animation: myAnim 2s ease 0s infinite alternate forwards;

    }
}


@keyframes myAnim {
    0% {
        transform: translateX(-100px);
    }

    100% {
        transform: translateX(100px);
    }
}
</style>
