<template>
    <div class="container">
        <div class="row">
            <div class="col">
                <h5>Servizio Clienti</h5>
                <ul>
                    <li>Domande Frequenti</li>
                    <li>Accedi</li>
                    <li>Registrati</li>
                </ul>
            </div>
            <div class="col">
                <h5>Cucine</h5>
                <ul>
                    <li>Americano</li>
                    <li>Italiano</li>
                    <li>Cinese</li>
                </ul>
            </div>
            <div class="col">
                <h5>Città</h5>
                <ul>
                    <li>Milano</li>
                    <li>Roma</li>
                    <li>Firenze</li>
                    <li>Bologna</li>
                </ul>
            </div>
        </div>
    </div>
</template>

<script>
export default {
    name: 'FooterComponent',
    data(){

    },
}
</script>

<style lang="scss" scoped>
.container{
    margin: 0;
    min-width: 100vw;
    padding: 20px;
    background: #000;
    color: rgb(200, 200, 200);
    .row{
        .col{
            margin-top: 20px;
            h5{
                margin-bottom: 20px;
            }
            ul{
                list-style: none;
                padding-left: 0px;
                li{
                    margin-bottom: 10px;

                }
            }
        }
    }


}
</style>
