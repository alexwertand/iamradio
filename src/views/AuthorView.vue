<template>
    <main class="pl-18 pl-lg-32 pl-xxl-44">
        <div class="d-flex align-items-center mb-25 mb-xxl-35">
            <div class="mr-10 mr-lg-25 mr-xxl-40 img-size-7 overflow-hidden">
                <img
                    class="img-fluid rounded-circle"
                    :src="srcSet"
                    alt=""
                    srcset="">
            </div>

            <section>
                <h1 class="mb-10 fs-18 fs-xxl-34">Armin van Buuren</h1>

                <div class="d-flex align-items-center mb-15 mb-xxl-25">
                    <div class="d-flex align-items-center mr-10 mr-xxl-20">
                        <music-note-icon class="mr-5 mr-xxl-10"/>

                        <span class="fs-14 fs-xxl-18 gray-1">423</span>
                    </div>

                    <div class="d-flex align-items-center mr-10 mr-xxl-20">
                        <comment-icon class="mr-5 mr-xxl-10"/>

                        <span class="fs-14 fs-xxl-18 gray-1">15</span>
                    </div>

                    <div class="d-flex align-items-center">
                        <filled-heart-icon class="mr-5 mr-xxl-10"/>

                        <span class="fs-14 fs-xxl-18 gray-1">6453</span>
                    </div>
                </div>

                <div class="d-flex align-items-center">
                    <button
                        type="button"
                        class="btn-play mr-20 mr-xxl-40">
                        <filled-arrow-icon class="mr-15" />

                        <pause-icon
                            v-if="false"
                            class="mr-15" />

                        <span class="fs-14 fs-xxl-18 lh-1 inter-bold">Воспроизвести</span>
                    </button>

                    <button
                        type="button">
                        <share-icon/>
                    </button>
                </div>
            </section>
        </div>

        <section class="mb-25 mb-xxl-50">
            <h2 class="mb-15 fs-18 fs-xxl-22 font-weight-bold">Описание</h2>

            <div>
                Armin Jozef Jacobus Daniël van Buuren born 25 December 1976)[1] is a Dutch DJ and record producer from Leiden, South Holland. Since 2001, he has hosted A State of Trance (ASOT), a weekly radio show, which is broadcast to nearly 40 million listeners in 84 countries on over 100 FM radio stations.[3] According to the website DJs and Festivals, "the radio show propelled him to stardom and helped cultivate an interest in trance music around the world".[4]

                Van Buuren has won a number of accolades. He has been ranked the number one DJ by DJ Mag a record of five times, four years in a row.[5] He was ranked fourth on the DJ Mag Top 100 DJs list in 2015, 2016, 2019 and 2020,[6] as well as third in 2017.[7] In 2014, he was nominated for a Grammy Award for Best Dance Recording for his single "This Is What It Feels Like" featuring Trevor Guthrie,[8] which makes him the fourth trance artist ever to receive a Grammy Award nomination.[9] In the United States, he holds the record for most entries, twenty-one, on the Billboard Dance/Electronic Albums chart.[10]
            </div>
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
                        to=""
                        class="slider-link black-1">
                        <span class="d-flex position-relative mb-8 rounded-8 overflow-hidden">
                            <span class="slider-link-hover position-absolute w-100 h-100 background-1 transparent"></span>

                            <span class="img-size-4">
                                <img class="img-fluid" :src="srcSet" alt="">
                            </span>
                        </span>

                        <h3 class="fs-14 fs-xxl-16 font-weight-bold">Клубная музыка</h3>
                    </router-link>
                </swiper-slide>
            </swiper>
        </section>

        <section class="mb-25 mb-xxl-50">
            <h2 class="mb-15 mb-xxl-40 fs-18 fs-xxl-22 font-weight-bold">Треки</h2>

            <div class="tracks-table">
                <div class="d-flex align-items-center pb-25 mb-15 border-bottom-1">
                    <div class="first-cell w-25">Трек</div>

                    <div class="second-cell w-25">Автор</div>

                    <div class="third-cell w-25">Альбом</div>

                    <div class="fourth-cell d-flex align-items-center">
                        <filled-heart-icon
                            width="16"
                            height="15"
                            class="mr-10"/>

                        <span>Популярность</span>
                    </div>

                    <div class="fifth-cell d-flex align-items-center">
                        <time-icon class="mr-10" />

                        <span>Прод.</span>
                    </div>
                </div>

                <div class="table-content">
                    <div
                        v-for="({track, author, album, popularity, duration}, index) in tableData"
                        :key="index"
                        class="table-row mb-15">
                        <div class="d-flex align-items-center inter-medium">
                            <div class="first-cell d-flex align-items-center w-25 pr-15">
                                <div class="mr-10 mr-xxl-20 img-size-9 overflow-hidden">
                                    <img class="img-fluid" :src="author.src" alt="">
                                </div>

                                <span class="text-ellipsis">{{ track.name }}</span>
                            </div>

                            <div class="second-cell d-flex align-items-center w-25 pr-15">
                                <div class="mr-10 mr-xxl-20 rounded-circle img-size-8 overflow-hidden">
                                    <img class="img-fluid" :src="author.src" alt="">
                                </div>

                                <span class="text-ellipsis">{{ author.name }}</span>
                            </div>

                            <div class="third-cell w-25 text-ellipsis pr-15">{{ album.name }}</div>

                            <div class="fourth-cell d-flex align-items-center">
                                {{ popularity }}
                            </div>

                            <div class="fifth-cell d-flex align-items-center">
                                {{ duration }}
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </section>
    </main>
</template>

<script>
    import { useSwiper, Swiper, SwiperSlide } from 'swiper/vue';
    import album_test from '@/assets/images/album_test_2.jpg';

    import CommentIcon from '@/components/icons/CommentIcon.vue';
    import MusicNoteIcon from '@/components/icons/MusicNoteIcon.vue';
    import FilledHeartIcon from '@/components/icons/FilledHeartIcon.vue';
    import FilledArrowIcon from '@/components/icons/FilledArrowIcon.vue';
    import PauseIcon from '@/components/icons/PauseIcon.vue';
    import ShareIcon from '@/components/icons/ShareIcon.vue';
    import TimeIcon from '@/components/icons/TimeIcon.vue';

    import author_track from '@/assets/images/author_track.jpg';

    export default {
        components: {
            Swiper,
            SwiperSlide,
            CommentIcon,
            MusicNoteIcon,
            FilledHeartIcon,
            FilledArrowIcon,
            PauseIcon,
            ShareIcon,
            TimeIcon
        },
        data() {
            return {
                srcSet: album_test,
                tableData: [
                    {
                        track: {
                            src: author_track,
                            name: 'Mom\'s Whiskey (feat. Kota the Friend) Whiskey (feat. Kota the Friend) Whiskey (feat. Kota the Friend)'
                        },
                        author: {
                            src: author_track,
                            name: 'Матвей Иванов'
                        },
                        album: {
                            name: 'Sepulnation The Studio Albums 1998-2009 Sepulnation The Studio Albums 1998-2009'
                        },
                        popularity: 100000,
                        duration: '08:25' 
                    },
                    {
                        track: {
                            src: author_track,
                            name: 'Mom\'s Whiskey (feat. Kota the Friend) Whiskey (feat. Kota the Friend) Whiskey (feat. Kota the Friend)'
                        },
                        author: {
                            src: author_track,
                            name: 'Матвей Иванов'
                        },
                        album: {
                            name: 'Sepulnation The Studio Albums 1998-2009 Sepulnation The Studio Albums 1998-2009'
                        },
                        popularity: 100000,
                        duration: '08:25' 
                    },
                    {
                        track: {
                            src: author_track,
                            name: 'Mom\'s Whiskey (feat. Kota the Friend) Whiskey (feat. Kota the Friend) Whiskey (feat. Kota the Friend)'
                        },
                        author: {
                            src: author_track,
                            name: 'Матвей Иванов'
                        },
                        album: {
                            name: 'Sepulnation The Studio Albums 1998-2009 Sepulnation The Studio Albums 1998-2009'
                        },
                        popularity: 100000,
                        duration: '08:25' 
                    },
                    {
                        track: {
                            src: author_track,
                            name: 'Mom\'s Whiskey (feat. Kota the Friend) Whiskey (feat. Kota the Friend) Whiskey (feat. Kota the Friend)'
                        },
                        author: {
                            src: author_track,
                            name: 'Матвей Иванов'
                        },
                        album: {
                            name: 'Sepulnation The Studio Albums 1998-2009 Sepulnation The Studio Albums 1998-2009'
                        },
                        popularity: 100000,
                        duration: '08:25' 
                    },
                    {
                        track: {
                            src: author_track,
                            name: 'Mom\'s Whiskey (feat. Kota the Friend) Whiskey (feat. Kota the Friend) Whiskey (feat. Kota the Friend)'
                        },
                        author: {
                            src: author_track,
                            name: 'Матвей Иванов'
                        },
                        album: {
                            name: 'Sepulnation The Studio Albums 1998-2009 Sepulnation The Studio Albums 1998-2009'
                        },
                        popularity: 100000,
                        duration: '08:25' 
                    },
                    {
                        track: {
                            src: author_track,
                            name: 'Mom\'s Whiskey (feat. Kota the Friend) Whiskey (feat. Kota the Friend) Whiskey (feat. Kota the Friend)'
                        },
                        author: {
                            src: author_track,
                            name: 'Матвей Иванов'
                        },
                        album: {
                            name: 'Sepulnation The Studio Albums 1998-2009 Sepulnation The Studio Albums 1998-2009'
                        },
                        popularity: 100000,
                        duration: '08:25' 
                    },
                    {
                        track: {
                            src: author_track,
                            name: 'Mom\'s Whiskey (feat. Kota the Friend) Whiskey (feat. Kota the Friend) Whiskey (feat. Kota the Friend)'
                        },
                        author: {
                            src: author_track,
                            name: 'Матвей Иванов'
                        },
                        album: {
                            name: 'Sepulnation The Studio Albums 1998-2009 Sepulnation The Studio Albums 1998-2009'
                        },
                        popularity: 100000,
                        duration: '08:25' 
                    },
                    {
                        track: {
                            src: author_track,
                            name: 'Mom\'s Whiskey (feat. Kota the Friend) Whiskey (feat. Kota the Friend) Whiskey (feat. Kota the Friend)'
                        },
                        author: {
                            src: author_track,
                            name: 'Матвей Иванов'
                        },
                        album: {
                            name: 'Sepulnation The Studio Albums 1998-2009 Sepulnation The Studio Albums 1998-2009'
                        },
                        popularity: 100000,
                        duration: '08:25' 
                    },
                    {
                        track: {
                            src: author_track,
                            name: 'Mom\'s Whiskey (feat. Kota the Friend) Whiskey (feat. Kota the Friend) Whiskey (feat. Kota the Friend)'
                        },
                        author: {
                            src: author_track,
                            name: 'Матвей Иванов'
                        },
                        album: {
                            name: 'Sepulnation The Studio Albums 1998-2009 Sepulnation The Studio Albums 1998-2009'
                        },
                        popularity: 100000,
                        duration: '08:25' 
                    },
                ]
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