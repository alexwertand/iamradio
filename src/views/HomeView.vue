<template>
    <main class="pl-18 pl-lg-32 pl-xxl-44">
        <section class="mb-25 mb-xxl-50">
            <h2 class="mb-15 fs-18 fs-xxl-22 font-weight-bold">Популярные авторы</h2>

            <!-- <button
                @click="onSwiper.slideNext()"
                type="button">
            </button>

            <button
                @click="onSwiper.slidePrev()"
                type="button">
            </button> -->

            <swiper
                :modules="modules"
                navigation
                :slidesPerView="'auto'"
                class="popular-authors-slider"
                :grabCursor="true"
                @swiper="onSwiper"
                @slideChange="onSlideChange">
                <swiper-slide
                    class="d-flex flex-column align-items-center"
                    v-for="item in 15"
                    :key="item">
                    <router-link
                        :to="{name: 'author'}"
                        class="slider-link mb-8 img-size-1 position-relative rounded-circle overflow-hidden">
                        <span class="slider-link-hover position-absolute d-flex d-flex-center w-100 h-100 background-1 transparent">
                            <EyeIcon/>
                        </span>

                        <img
                            class="img-fluid"
                            :src="srcSet[0]"
                            alt="">
                    </router-link>

                    <h3 class="font-weight-normal inter-medium fs-14 fs-xxl-18">Valya</h3>
                </swiper-slide>
            </swiper>
        </section>

        <section class="mb-25 mb-xxl-50">
            <h2 class="mb-15 fs-18 fs-xxl-22 font-weight-bold">Новые треки</h2>

            <swiper
                :slidesPerView="'auto'"
                class="tracks-slider"
                :grabCursor="true"
                @swiper="onSwiper"
                @slideChange="onSlideChange">
                <swiper-slide 
                    v-for="item in 15"
                    :key="item">
                    <router-link
                        to=""
                        class="slider-link d-flex mb-12 mb-xxl-18 black-1 rounded-8 background-gradient-1">
                        <span class="img-size-2 position-relative rounded-8 overflow-hidden">
                            <button
                                type="button"
                                class="slider-link-hover position-absolute d-flex d-flex-center w-100 h-100 background-1 transparent">
                                <play-icon/>
                            </button>

                            <img class="img-fluid" :src="srcSet[1]" alt="">
                        </span>
                        
                        <span class="d-flex flex-column justify-content-center ml-15">
                            <span class="inter-bold fs-14 fs-xxl-18">Super Test</span>

                            <span class="fs-14 fs-xxl-16">Test try</span>
                        </span>
                    </router-link>

                    <router-link
                        to=""
                        class="slider-link d-flex mb-12 mb-xxl-18 black-1 rounded-8 background-gradient-1">
                        <span class="img-size-2 position-relative rounded-8 overflow-hidden">
                            <button
                                type="button"
                                class="slider-link-hover position-absolute d-flex d-flex-center w-100 h-100 background-1 transparent">
                                <pause-icon fill="#ffffff"/>
                            </button>

                            <img class="img-fluid" :src="srcSet[1]" alt="">
                        </span>
                        
                        <span class="d-flex flex-column justify-content-center ml-15">
                            <span class="inter-bold fs-14 fs-xxl-18">Super Test</span>

                            <span class="fs-14 fs-xxl-16">Test try</span>
                        </span>
                    </router-link>

                    <router-link
                        to=""
                        class="slider-link d-flex black-1 rounded-8 background-gradient-1">
                        <span class="img-size-2 position-relative rounded-8 overflow-hidden">
                            <button
                                type="button"
                                class="slider-link-hover position-absolute d-flex d-flex-center w-100 h-100 background-1 transparent">
                            </button>

                            <img class="img-fluid" :src="srcSet[1]" alt="">
                        </span>
                        
                        <span class="d-flex flex-column justify-content-center ml-15">
                            <span class="inter-bold fs-14 fs-xxl-18">Super Test</span>

                            <span class="fs-14 fs-xxl-16">Test try</span>
                        </span>
                    </router-link>
                </swiper-slide>
            </swiper>
        </section>

        <section class="mb-25 mb-xxl-50">
            <h2 class="mb-15 fs-18 fs-xxl-22 font-weight-bold">Наша музыка звучит в</h2>

            <swiper
                class=""
                :slidesPerView="'auto'"
                :grabCursor="true"
                @swiper="onSwiper"
                @slideChange="onSlideChange">
                <swiper-slide
                    class="img-size-6" 
                    v-for="item in 15"
                    :key="item">
                    <img class="img-fluid" :src="srcSet[3]" alt="">
                </swiper-slide>
            </swiper>
        </section>

        <section class="mb-25 mb-xxl-50">
            <h2 class="mb-15 fs-18 fs-xxl-22 font-weight-bold">Плейлисты для трансляций</h2>

            <swiper
                class="playlists-slider"
                :slidesPerView="'auto'"
                :grabCursor="true"
                @swiper="onSwiper"
                @slideChange="onSlideChange">
                <swiper-slide 
                    v-for="item in 15"
                    :key="item">
                    <router-link
                        to=""
                        class="slider-link black-1">
                        <span class="d-flex flex-wrap position-relative mb-8 rounded-8 overflow-hidden">
                            <span class="total-time pr-8 pl-8 d-flex d-flex-center position-absolute fs-10 fs-xxl-12 lh-1 black-1 inter-bold background-0">
                                25 min.
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

                            <span class="img-size-3">
                                <img class="img-fluid" :src="srcSet[2]" alt="">
                            </span>

                            <span class="img-size-3">
                                <img class="img-fluid" :src="srcSet[2]" alt="">
                            </span>

                            <span class="img-size-3">
                                <img class="img-fluid" :src="srcSet[2]" alt="">
                            </span>

                            <span class="img-size-3">
                                <img class="img-fluid" :src="srcSet[2]" alt="">
                            </span>
                        </span>

                        <h3 class="fs-14 fs-xxl-16 font-weight-bold">Симфоническая музыка</h3>
                    </router-link>
                </swiper-slide>
            </swiper>
        </section>

        <section class="mb-25 mb-xxl-50">
            <h2 class="mb-15 fs-18 fs-xxl-22">Популярные треки</h2>

            <swiper
                :slidesPerView="'auto'"
                class="tracks-slider"
                :grabCursor="true"
                @swiper="onSwiper"
                @slideChange="onSlideChange">
                <swiper-slide 
                    v-for="item in 15"
                    :key="item">
                    <router-link
                        to=""
                        class="slider-link d-flex mb-12 mb-xxl-18 black-1 rounded-8 background-gradient-1">
                        <span class="img-size-2 position-relative rounded-8 overflow-hidden">
                            <button
                                type="button"
                                class="slider-link-hover position-absolute d-flex d-flex-center w-100 h-100 background-1 transparent">
                                <play-icon/>
                            </button>

                            <img class="img-fluid" :src="srcSet[1]" alt="">
                        </span>
                        
                        <span class="d-flex flex-column justify-content-center ml-15">
                            <span class="inter-bold fs-14 fs-xxl-18">Super Test</span>

                            <span class="fs-14 fs-xxl-16">Test try</span>
                        </span>
                    </router-link>

                    <router-link
                        to=""
                        class="slider-link d-flex mb-12 mb-xxl-18 black-1 rounded-8 background-gradient-1">
                        <span class="img-size-2 position-relative rounded-8 overflow-hidden">
                            <button
                                type="button"
                                class="slider-link-hover position-absolute d-flex d-flex-center w-100 h-100 background-1 transparent">
                            </button>

                            <img class="img-fluid" :src="srcSet[1]" alt="">
                        </span>
                        
                        <span class="d-flex flex-column justify-content-center ml-15">
                            <span class="inter-bold fs-14 fs-xxl-18">Super Test</span>

                            <span class="fs-14 fs-xxl-16">Test try</span>
                        </span>
                    </router-link>

                    <router-link
                        to=""
                        class="slider-link d-flex black-1 rounded-8 background-gradient-1">
                        <span class="img-size-2 position-relative rounded-8 overflow-hidden">
                            <button
                                type="button"
                                class="slider-link-hover position-absolute d-flex d-flex-center w-100 h-100 background-1 transparent">
                            </button>

                            <img class="img-fluid" :src="srcSet[1]" alt="">
                        </span>
                        
                        <span class="d-flex flex-column justify-content-center ml-15">
                            <span class="inter-bold fs-14 fs-xxl-18">Super Test</span>

                            <span class="fs-14 fs-xxl-16">Test try</span>
                        </span>
                    </router-link>
                </swiper-slide>
            </swiper>
        </section>

        <section class="mb-25 mb-xxl-50">
            <h2 class="mb-15 fs-18 fs-xxl-22 font-weight-bold">Альбомы</h2>

            <swiper
                class="playlists-slider"
                :slidesPerView="'auto'"
                :grabCursor="true"
                @swiper="onSwiper"
                @slideChange="onSlideChange">
                <swiper-slide 
                    v-for="item in 15"
                    :key="item">
                    <router-link
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

                            <span class="img-size-4">
                                <img class="img-fluid" :src="srcSet[4]" alt="">
                            </span>
                        </span>

                        <h3 class="fs-14 fs-xxl-16 font-weight-bold">Клубная музыка</h3>
                    </router-link>
                </swiper-slide>
            </swiper>
        </section>
    </main>
</template>

<script>
    import { Navigation } from 'swiper';
    import { useSwiper, Swiper, SwiperSlide } from 'swiper/vue';
    import autor_test_photo from '@/assets/images/autor_test_photo.png';
    import playlist_test from '@/assets/images/playlist-test.png';
    import playlist_test2 from '@/assets/images/playlist_test.jpg';
    import album_test from '@/assets/images/album_test.jpg';
    import silpo from '@/assets/images/silpo.png';

    import EyeIcon from '@/components/icons/EyeIcon.vue';
    import PlayIcon from '@/components/icons/PlayIcon.vue';
    import PauseIcon from '@/components/icons/PauseIcon.vue';

    export default {
        components: {
            Swiper,
            SwiperSlide,
            EyeIcon,
            PlayIcon,
            PauseIcon
        },
        data() {
            return {
                srcSet: [autor_test_photo, playlist_test, playlist_test2, silpo, album_test],
            }
        },
        setup() {
            const onSwiper = (swiper) => {
                //console.log(onSwiper, 'onSwiper');
            };

            const onSlideChange = () => {
                //console.log('slide change');
            };

            return {
                onSwiper,
                onSlideChange,
                modules: [Navigation]
            };
        },
    };
</script>