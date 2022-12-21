<template>
    <div class="ac-white">
        <div class="container-xl d-flex align-items-baseline justify-content-between ">
            <a href="/">
                <div>

                    <img src="../assets/img/deliveroo_2_VV3s7Fj.png" alt="">

                </div>
            </a>


            <div>
                <ul>
                    <li><a
                            href="https://www.decathlon.it/browse/c0-tutti-gli-sport/c1-ciclismo/c2-biciclette/_/N-6pql59"><i
                                class="bi bi-car-front"></i> Diventa un rider</a></li>

                    <li> <a href="/login"> Accedi</a></li>

                    <li><a href=""><i class="bi bi-question-circle"></i> Aiuto?</a></li>

                </ul>
            </div>

        </div>


    </div>


</template>

<script>
export default {
    name: 'NavbarComponent',

}
</script>

<style lang="scss" scoped>
.ac-white {
    background-color: white;

}

img {
    width: 200px;
}


ul {
    display: flex;
    list-style: none;
    column-gap: 10px;

}

a {
    text-decoration: none;
    color: black;
}

i {
    color: black;
}

a:hover {
    background-color: aliceblue;
    border: 10px solid aliceblue;
    border-radius: 15px;
}
</style>
