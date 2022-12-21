<template>
    <div class="container">
        <div class="row my-4">
            <div class="col">
                <h2 class="text-center">Il tuo ordine</h2>
            </div>
        </div>
        <div class="row">
            <div class="col">
                <a href="#">
                    <svg xmlns="http://www.w3.org/2000/svg" width="16" height="16" fill="currentColor"
                        class="bi bi-exclamation-circle" viewBox="0 0 16 16">
                        <path d="M8 15A7 7 0 1 1 8 1a7 7 0 0 1 0 14zm0 1A8 8 0 1 0 8 0a8 8 0 0 0 0 16z" />
                        <path
                            d="M7.002 11a1 1 0 1 1 2 0 1 1 0 0 1-2 0zM7.1 4.995a.905.905 0 1 1 1.8 0l-.35 3.507a.552.552 0 0 1-1.1 0L7.1 4.995z" />
                    </svg>
                    Info sugli allergeni
                </a>
            </div>
        </div>
        <div class="row my-2">
            <div class="col form-group">
                <input type="text" class="form-control" id="inputAddress" v-model="address"
                    placeholder="Inserisci il tuo indirizzo completo" />
            </div>
        </div>
        <div class="row my-4">
            <div class="col my-0">
                <a href="#" id="btn-checkout" class="btn btn-primary btn-lg btn-block" @click="sendOrder">
                    <i class="bi bi-cart-check"></i>
                    <span class="btn-txt">Vai al pagamento</span></a>
            </div>
        </div>
        <div class="row my-4">
            <div class="col btn-group btn-group-toggle btn-custom my-0 dh-mx">
                <button class="btn btn-custom toggle" @click="toggle" :class="[showDeliveryMethod ? 'active' : '']">
                    <i class="bi bi-bicycle"></i>
                    <span class="btn-txt">Consegna</span>
                </button>
                <button class="btn btn-custom toggle" @click="toggle" :class="[!showDeliveryMethod ? 'active' : '']">
                    <i class="bi bi-bag"></i>
                    <span class="btn-txt">Ritiro al locale</span>
                </button>
            </div>
        </div>
        <!-- ORDINI AGGIUNTI  -->
        <div class="container-sm">
            <div class="row" v-for="(selectedItem, index) in selectedItems" :key="index">
                <div class="col-8">
                    {{ selectedItem.name }}
                </div>
                <div class="col-4">
                    {{ selectedItem.price }} $
                </div>
                <hr class="border border-dark w-100">
            </div>
            <div class="row py-2 qq">
                <div class="col-5 text-center">Totale</div>
                <div class="col-5 text-center">{{ getTotal(selectedItems) }} $</div>
            </div>
        </div>
    </div>
</template>

<script>
export default {
    name: "BasketComponent",
    data() {
        return {
            showDeliveryMethod: true,
            address: "",
        };
    },
    props: {
        selectedItems: Array,
    },
    methods: {
        toggle() {
            this.showDeliveryMethod = !this.showDeliveryMethod;
        },
        sendOrder() {
            let total = this.getTotal();
            if (this.selectedItems.length > 0 && this.address.length > 0) {
                const json = {
                    total: total,
                    address: this.address,
                    menu_items: this.selectedItems,
                };
                axios
                    .post("api/orders", json, {
                        headers: {
                            "Content-Type": "application/json",
                        },
                    })
                    .then(async (response) => {
                        console.log(await response.data);
                        this.$router.push('/order-complete/' + response.data.id);
                    })
                    .catch((e) => console.log(e));
            } else {
                console.log("Dati mancanti");
            }
        },
        getTotal() {
            let total = 0;
            for (let i = 0; i < this.selectedItems.length; i++) {
                total += this.selectedItems[i].price;
            }
            console.log(total);
            return Math.round((total + Number.EPSILON) * 100) / 100;
        },
    },
};
</script>

<style scoped lang="scss">
// <--- UTILITIES --->
.dh-mx {
    margin-inline: 15px !important;
}

.btn-custom,
#btn-checkout {
    border-radius: 2rem;
    border: none;
}

.btn-custom {
    background-color: rgb(60, 60, 60);
    color: rgb(205, 205, 205);
}

#btn-checkout {
    background-color: #f36805;
    font-weight: bolder !important;
}

.btn-custom.active {
    // position: relative;
    border-radius: 2rem !important;
    // z-index: 5;
    background-color: #fff !important;
    color: #000 !important;
    font-weight: bolder !important;
}

.qq {
    justify-content: space-between;
    font-size: larger;
    font-weight: bolder;
}

// <--- /UTILITIES --->

.container {
    // padding: 30px 20px;
    // width: 400px;
    border: 2px solid #000;
    border-radius: 10px;
    background-color: #fff;

    .btn-group {
        padding: 2px !important;
        background-color: rgb(60, 60, 60);
    }
}

@media only screen and (max-width: 600px) {
    .btn-txt {
        display: none;
    }

}



/* Medium devices (landscape tablets, 768px and up) */
@media only screen and (max-width: 768px) {
    .btn-txt {
        display: none;
    }

}

/* Large devices (laptops/desktops, 992px and up) */
@media only screen and (min-width: 992px) {}

/* Extra large devices (large laptops and desktops, 1200px and up) */
@media only screen and (min-width: 1200px) {}
</style>
