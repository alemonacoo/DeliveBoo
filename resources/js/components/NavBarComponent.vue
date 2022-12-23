<template>
    <div class="ac-white">
        <div class="container-xl d-flex align-items-baseline justify-content-between ">

            <div>
                <a href="/">
                    <img src="../assets/img/WhatsApp Image 2022-12-20 at 11.30.31.jpeg" alt="">
                </a>
            </div>
            <div>
                <ul>
                    <li class="invisible1">
                        <a
                            href="https://www.decathlon.it/browse/c0-tutti-gli-sport/c1-ciclismo/c2-biciclette/_/N-6pql59"><i
                                class="bi bi-car-front"></i> Diventa un rider</a>
                    </li>

                    <li>
                        <a href="/login"> Accedi</a>
                    </li>

                    <li class="invisible1">
                        <a href=""><i class="bi bi-question-circle"></i> Aiuto?</a>
                    </li>
                </ul>
            </div>
        </div>
    </div>
</template>

<script>
export default {
    name: "NavbarComponent",
};
</script>

<style lang="scss" scoped>
.ac-white {
    background-color: white;
    padding: 20px 0;
}

img {
    width: 200px;
}

ul {
    display: flex;
    list-style: none;
    column-gap: 10px;
    margin: 0;
}

a {
    font-size: 1rem;
    text-decoration: none;
    color: black;
    font-weight: bolder;
    padding: 12px 12px;

}

i {
    color: black;
}

li {

    a:hover {
        background-color: #f5f3f1;
        border-radius: 20px;
    }
}

// .invisible {
//     display: block !important;
// }

@media only screen and (max-width: 620px) {
    .invisible1 {
        display: none;
    }
}
</style>
