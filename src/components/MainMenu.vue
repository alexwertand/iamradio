<template>
    <div
        :class="{'open position-fixed w-100 overflow-hidden background-0 z-99999': menuOpen}"
        class="main-menu d-flex align-items-center justify-content-between pl-18 pr-18 pl-lg-32 pr-lg-32 pl-xxl-44 pr-xxl-44 border-bottom-1">
        <router-link
            :to="{name: 'home'}"
            class="img-logo-box overflow-hidden">
            <img
                class="img-fluid"
                :src="IamradioIconSrc"
                alt="">
        </router-link>

        <div class="main-menu-links d-none d-lg-flex">
            <router-link
                class="inter-bold black-1 mr-lg-24 mr-xxl-48"
                to="">Добавить свой трек</router-link>

            <router-link
                class="inter-bold black-1 mr-lg-24 mr-xxl-48"
                :to="{name: 'authors'}">Авторы</router-link>

            <router-link
                class="inter-bold black-1 mr-lg-24 mr-xxl-48"
                :to="{name: 'playlists'}">Плейлисты</router-link>

            <router-link
                class="inter-bold black-1 mr-lg-24 mr-xxl-48"
                to="">Поиск</router-link>

            <button
                type="button"
                class="d-flex align-items-center">
                <span class="mr-5 inter-bold black-1">Еще</span>
                
                <caret-icon/>
            </button>
        </div>

        <div class="main-menu-control d-none d-lg-flex justify-content-end">
            <router-link
                class="inter-bold black-1 mr-lg-24 mr-xxl-36"
                to="">Укр</router-link>

            <router-link
                class="inter-bold black-1"
                to="">Вход</router-link>
        </div>

        <div
            @click="toggleMenu"
            :class="{'is-active': menuOpen}"
            class="d-lg-none hamburger hamburger--squeeze js-hamburger">
            <div class="hamburger-box">
                <div class="hamburger-inner"></div>
            </div>
        </div>
    </div>
</template>

<script>
    import IamradioIcon from '@/assets/images/iamradio@3x.png';
    import CaretIcon from '@/components/icons/CaretIcon.vue';

    export default {
        components: {
            CaretIcon
        },
        data() {
            return {
                IamradioIconSrc: IamradioIcon,
                menuOpen: false
            }
        },
        methods: {
            toggleMenu() {
                this.menuOpen = !this.menuOpen;

                let body = document.getElementsByTagName('body')[0];

                body.classList.toggle('overflow-hidden');
            }
        }
    }
</script>