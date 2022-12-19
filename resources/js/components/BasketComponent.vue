<template>
    <div class="container">
        <div class="row">
            <div class="col">
                <h2>Il tuo ordine</h2>
            </div>
        </div>
        <div class="row">
            <div class="col">
                <a href="#">
                    <svg
                        xmlns="http://www.w3.org/2000/svg"
                        width="16"
                        height="16"
                        fill="currentColor"
                        class="bi bi-exclamation-circle"
                        viewBox="0 0 16 16"
                    >
                        <path
                            d="M8 15A7 7 0 1 1 8 1a7 7 0 0 1 0 14zm0 1A8 8 0 1 0 8 0a8 8 0 0 0 0 16z"
                        />
                        <path
                            d="M7.002 11a1 1 0 1 1 2 0 1 1 0 0 1-2 0zM7.1 4.995a.905.905 0 1 1 1.8 0l-.35 3.507a.552.552 0 0 1-1.1 0L7.1 4.995z"
                        />
                    </svg>
                    Info sugli allergeni
                </a>
            </div>
        </div>
        <div class="row">
            <div class="col">
                <input type="text" v-model="address" />
            </div>
        </div>
        <div class="row my-4">
            <div class="col my-0">
                <a
                    href="#"
                    id="btn-checkout"
                    class="btn btn-primary btn-lg btn-block"
                    @click="sendOrder"
                    >Vai al pagamento</a
                >
            </div>
        </div>
        <div class="row my-4">
            <div class="col btn-group btn-group-toggle btn-custom my-0 dh-mx">
                <button
                    class="btn btn-secondary btn-custom toggle"
                    @click="toggle"
                    :class="[showDeliveryMethod ? 'active' : '']"
                >
                    <!-- <input type="radio" name="options" id="option1" autocomplete="off" checked> -->
                    <svg
                        xmlns="http://www.w3.org/2000/svg"
                        width="16"
                        height="16"
                        fill="currentColor"
                        class="bi bi-bicycle"
                        viewBox="0 0 16 16"
                    >
                        <path
                            d="M4 4.5a.5.5 0 0 1 .5-.5H6a.5.5 0 0 1 0 1v.5h4.14l.386-1.158A.5.5 0 0 1 11 4h1a.5.5 0 0 1 0 1h-.64l-.311.935.807 1.29a3 3 0 1 1-.848.53l-.508-.812-2.076 3.322A.5.5 0 0 1 8 10.5H5.959a3 3 0 1 1-1.815-3.274L5 5.856V5h-.5a.5.5 0 0 1-.5-.5zm1.5 2.443-.508.814c.5.444.85 1.054.967 1.743h1.139L5.5 6.943zM8 9.057 9.598 6.5H6.402L8 9.057zM4.937 9.5a1.997 1.997 0 0 0-.487-.877l-.548.877h1.035zM3.603 8.092A2 2 0 1 0 4.937 10.5H3a.5.5 0 0 1-.424-.765l1.027-1.643zm7.947.53a2 2 0 1 0 .848-.53l1.026 1.643a.5.5 0 1 1-.848.53L11.55 8.623z"
                        />
                    </svg>
                    Consegna
                </button>
                <button
                    class="btn btn-secondary btn-custom toggle"
                    @click="toggle"
                    :class="[!showDeliveryMethod ? 'active' : '']"
                >
                    <!-- <input type="radio" name="options" id="option2" autocomplete="off"> -->
                    <svg
                        xmlns="http://www.w3.org/2000/svg"
                        width="16"
                        height="16"
                        fill="currentColor"
                        class="bi bi-bag"
                        viewBox="0 0 16 16"
                    >
                        <path
                            d="M8 1a2.5 2.5 0 0 1 2.5 2.5V4h-5v-.5A2.5 2.5 0 0 1 8 1zm3.5 3v-.5a3.5 3.5 0 1 0-7 0V4H1v10a2 2 0 0 0 2 2h10a2 2 0 0 0 2-2V4h-3.5zM2 5h12v9a1 1 0 0 1-1 1H3a1 1 0 0 1-1-1V5z"
                        />
                    </svg>
                    Ritiro al locale
                </button>
            </div>
        </div>
        <!-- ORDINI AGGIUNTI  -->
        <div class="container-sm">
            <div
                class="row"
                v-for="selectedItem in selectedItems"
                :key="selectedItem.id"
            >
                <div class="col-8">
                    {{ selectedItem.name }}
                </div>
                <div class="col-4">
                    {{ selectedItem.price }}
                </div>
            </div>
        </div>

        <div class="row">
            {{ selectedItems.length }}
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
            return total;
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

// <--- /UTILITIES --->

.container {
    padding: 30px 20px;
    width: 400px;
    border: 1px solid #000;
    border-radius: 10px;
    background-color: #fff;

    .btn-group {
        padding: 2px !important;
        background-color: rgb(60, 60, 60);

        // padding: 2px;
        .btn {
        }
    }
}
</style>
