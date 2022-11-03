<template>
    <main class="pl-18 pr-18 pl-lg-32 pr-lg-32 pl-xxl-44 pr-xxl-44">
        <h1 class="mb-15 mb-xxl-35 fs-18 fs-lg-22">Плейлисты</h1>

        <div class="playlists">
            <router-link
                v-for="({time, name}, index) in fakeData"
                :key="index"
                to=""
                class="d-block slider-link black-1">
                <span class="playlist-box d-flex flex-wrap position-relative mb-8 rounded-8 overflow-hidden">
                    <span class="total-time pr-8 pl-8 d-flex d-flex-center position-absolute fs-10 fs-xxl-12 lh-1 black-1 inter-bold background-0">
                        {{ time }}
                    </span>

                    <span class="slider-link-hover position-absolute d-flex d-flex-center w-100 h-100 background-1 transparent">
                        <button
                            type="button"
                            class="play-btn position-absolute">
                            <play-icon width="44" height="44"/>
                        </button>

                        <button
                            v-if="false"
                            type="button"
                            class="pause-btn position-absolute">
                            <pause-icon fill="#fff"/>
                        </button>
                    </span>

                    <span class="w-50 h-50">
                        <img class="img-fluid" :src="srcSet[2]" alt="">
                    </span>

                    <span class="w-50 h-50">
                        <img class="img-fluid" :src="srcSet[2]" alt="">
                    </span>

                    <span class="w-50 h-50">
                        <img class="img-fluid" :src="srcSet[2]" alt="">
                    </span>

                    <span class="w-50 h-50">
                        <img class="img-fluid" :src="srcSet[2]" alt="">
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
    import PauseIcon from '@/components/icons/PauseIcon.vue';

    export default {
        components: {
            PlayIcon,
            PauseIcon
        },
        data() {
            return {
                srcSet: [autor_test_photo, playlist_test, playlist_test2, silpo, album_test],
                fakeData: [
                    {
                        time: '25 min.',
                        name: 'Симфоническая музыка'
                    },
                    {
                        time: '25 min.',
                        name: 'Симфоническая музыка'
                    },
                    {
                        time: '25 min.',
                        name: 'Симфоническая музыка'
                    },
                    {
                        time: '25 min.',
                        name: 'Симфоническая музыка'
                    },
                    {
                        time: '25 min.',
                        name: 'Симфоническая музыка'
                    },
                    {
                        time: '25 min.',
                        name: 'Симфоническая музыка'
                    },
                    {
                        time: '25 min.',
                        name: 'Симфоническая музыка'
                    },
                    {
                        time: '25 min.',
                        name: 'Симфоническая музыка'
                    },
                    {
                        time: '25 min.',
                        name: 'Симфоническая музыка'
                    },
                    {
                        time: '25 min.',
                        name: 'Симфоническая музыка'
                    },
                    {
                        time: '25 min.',
                        name: 'Симфоническая музыка'
                    }
                ]
            }
        },
    };
</script>

<style scoped>
    .playlists {
        display: grid;
        grid-template-columns: repeat(auto-fill, 45%);
        grid-gap: 1rem;
        justify-content: space-between;
    }

    .playlist-box {
        height: 150px;
    }

    .play-btn,
    .pause-btn {
        right: 16px;
        bottom: 16px;
    }

    @media(max-width: 991px) and (orientation: landscape) {
        .playlists {
            grid-template-columns: repeat(auto-fill, 30%);
        }
    }

    @media(min-width: 992px) {
        .playlists {
            grid-template-columns: repeat(auto-fill, 200px);
        }

        .playlist-box {
            height: 200px;
        }
    }
</style>