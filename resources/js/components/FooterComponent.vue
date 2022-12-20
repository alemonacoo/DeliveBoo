<template>
    <div class="container-fluid ">
        <div class="row">
            <div class="col">
                <h5>Servizio Clienti</h5>
                <ul>
                    <li>Domande Frequenti</li>
                    <li>Accedi</li>
                    <li>Registrati</li>
                    <li>Miglior Prezzo Garantito</li>


                </ul>
            </div>
            <div class="col">
                <h5>Cucine</h5>
                <ul>
                    <li>Vegetariano</li>
                    <li>Messicano</li>
                    <li>Cinese</li>
                    <li>Indiano</li>
                    <li>Greco</li>
                    <li>Giapponese</li>
                    <li>Italiano</li>
                    <li>Thai</li>
                    <li>Pizza</li>
                    <li>Americano</li>



                </ul>
            </div>

            <div class="col">
                <h5>Catene</h5>
                <ul>
                    <li>Alice Pizza</li>
                    <li>Burger King</li>
                    <li>Zushi</li>
                    <li>Old Wild West</li>
                    <li>Poke House</li>
                    <li>RoadHouse</li>
                    <li>Sushiko</li>
                    <li>KFC</li>
                    <li>Fratelli La Bufala</li>
                    <li>McDonald's</li>



                </ul>
            </div>


            <div class="col">
                <h5>Città</h5>
                <ul>
                    <li>Milano</li>
                    <li>Roma</li>
                    <li>Firenze</li>
                    <li>Salerno</li>
                    <li>Padova</li>
                    <li>Parma</li>
                    <li>Ferrara</li>
                    <li>Napoli</li>
                    <li>Udine</li>
                    <li>Campobasso</li>
                    <li>Varese</li>

                </ul>
            </div>

            <div class="col">
                <h5>Chi Siamo</h5>
                <ul>
                    <li>Informazioni su Deliveroo</li>
                    <li>Diventa partner di Deliveroo</li>
                    <li>Programma Bug Bounty</li>
                    <li>Partner Center</li>


                </ul>
            </div>

        </div>
    </div>
</template>

<script>
export default {
    name: 'FooterComponent',
    props: {
        categories: Array,
    },

}
</script>

<style lang="scss" scoped>
.container-fluid {
    padding: 20px;
    background: #efedea;
    color: black;

    .row {

        max-width: 1200px;
        margin: 0 auto;

        .col {
            margin-top: 20px;

            h5 {
                margin-bottom: 20px;
            }

            ul {
                list-style: none;
                padding-left: 0px;

                li {
                    margin-bottom: 10px;
                }
            }
        }
    }
}
</style>
