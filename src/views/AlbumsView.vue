<template>
    <main class="pl-18 pr-18 pl-lg-32 pr-lg-32 pl-xxl-44 pr-xxl-44">
        <h1 class="mb-15 mb-xxl-35 fs-18 fs-lg-22">Альбомы</h1>

        <div class="albums">
            <router-link
                v-for="({name}, index) in fakeData"
                :key="index"
                :to="{name: 'album'}"
                class="slider-link black-1">
                <span class="d-flex flex-wrap position-relative mb-8 rounded-8 overflow-hidden">
                    <span class="slider-link-hover position-absolute d-flex d-flex-center w-100 h-100 background-1 transparent">
                        <span
                            class="position-absolute absolute-center">
                            <span 
                                @click.prevent
                                role="button">
                                <play-icon width="88" height="88"/>
                            </span>
                        </span>
                    </span>

                    <span class="">
                        <img class="img-fluid" :src="srcSet[4]" alt="">
                    </span>
                </span>

                <h3 class="fs-14 fs-xxl-16 font-weight-bold">{{ name }}</h3>
            </router-link>
        </div>
    </main>
</template>

<script>
    import autor_test_photo from '@/assets/images/autor_test_photo.png';
    import playlist_test from '@/assets/images/playlist-test.png';
    import playlist_test2 from '@/assets/images/playlist_test.jpg';
    import album_test from '@/assets/images/album_test.jpg';
    import silpo from '@/assets/images/silpo.png';

    import PlayIcon from '@/components/icons/PlayIcon.vue';

    export default {
        components: {
            PlayIcon
        },
        data() {
            return {
                srcSet: [autor_test_photo, playlist_test, playlist_test2, silpo, album_test],
                fakeData: [
                    {
                        name: 'Club music'
                    },
                    {
                        name: 'Club music'
                    },
                    {
                        name: 'Club music'
                    },
                    {
                        name: 'Club music'
                    },
                    {
                        name: 'Club music'
                    },
                    {
                        name: 'Club music'
                    },
                    {
                        name: 'Club music'
                    },
                    {
                        name: 'Club music'
                    },
                    {
                        name: 'Club music'
                    },
                    {
                        name: 'Club music'
                    },
                    {
                        name: 'Club music'
                    },
                    {
                        name: 'Club music'
                    },
                ]
            }
        },
    }
</script>

<style scoped>
    .albums {
        display: grid;
        grid-template-columns: repeat(auto-fill, 45%);
        grid-gap: 1rem;
        justify-content: space-between;
    }


    @media(max-width: 991px) and (orientation: landscape) {
        .albums {
            grid-template-columns: repeat(auto-fill, 30%);
        }
    }

    @media(min-width: 992px) {
        .albums {
            grid-template-columns: repeat(auto-fill, 200px);
        }
    }
</style>