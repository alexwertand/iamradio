<template>
    <div class="container-fluid content-wrapper">
        <main-menu class="mb-20 mb-lg-25 mb-xxl-35"/>

        <router-view/>

        <player/>
    </div>
</template>

<script>
    import MainMenu from '@/components/MainMenu.vue';
    import Player from '@/components/Player.vue';

    export default {
        components: {
            MainMenu,
            Player
        }
    }
</script>