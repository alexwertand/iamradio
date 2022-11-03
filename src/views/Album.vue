<template>
    <main>
        <div class="d-flex mb-25 mb-xxl-35 pl-18 pr-18 pl-lg-32 pr-lg-32 pl-xxl-44 pr-xxl-44">
            <section class="clearfix">
                <div class="float-left mb-20 mb-xxl-0 mr-10 mr-lg-25 mr-xxl-40 img-size-7 overflow-hidden">
                    <img
                        class="img-fluid rounded-8"
                        :src="srcSet"
                        alt=""
                        srcset="">
                </div>

                <h1 class="float-left w-xxl-70 mb-10 fs-18 fs-xxl-34">Симфоническая музыка</h1>

                <div class="float-left float-lg-none float-xxl-left w-xxl-70 mb-xxl-25 fs-xxl-22">64 hours</div>

                <div class="w-100 w-xxl-70 float-left d-flex align-items-center">
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

        <div class="album-table">
            <div class="album-table-head w-100 d-flex align-items-center pt-12 pb-12 pt-xxl-25 pb-xxl-25 mb-15 pr-18 pl-18 pl-lg-32 pr-lg-32 pl-xxl-44 pr-xxl-44 border-top-1 border-bottom-1">
                <div class="first-cell text-xxl-center mr-10 mr-xxl-20">#</div>

                <div class="second-cell mr-auto pr-15">Трек</div>

                <div class="group-cell d-flex justify-content-between">
                    <div class="third-cell d-flex align-items-center">
                        <filled-heart-icon
                            width="16"
                            height="15"
                            fill="#232323"
                            class="mr-10"/>

                        <span class="d-none d-xxl-block">Популярность</span>
                    </div>

                    <div class="fourth-cell d-flex align-items-center">
                        <time-icon class="mr-10" />

                        <span class="d-none d-xxl-block">Прод.</span>
                    </div>
                </div>
            </div>

            <div class="album-table-content pr-18 pl-18 pl-lg-32 pr-lg-32 pl-xxl-44 pr-xxl-44">
                <div
                    v-for="({track, popularity, duration}, index) in tableData"
                    :key="index"
                    class="table-row mb-15">
                    <div class="d-flex align-items-center inter-medium">
                        <div class="first-cell mr-10 mr-xxl-20 text-center inter-bold fs-14 fs-xxl-16">{{ index + 1 }}</div>

                        <div class="second-cell d-flex align-items-center pr-15 mr-auto overflow-hidden">
                            <span class="text-ellipsis inter-medium">{{ track.name }}</span>
                        </div>

                        <div class="group-cell d-flex justify-content-between">
                            <div class="third-cell d-flex align-items-center mr-10">
                                {{ popularity }}
                            </div>

                            <div class="fourth-cell d-flex align-items-center">
                                {{ duration }}
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </main>
</template>

<script>
    import album_test from '@/assets/images/album_test_2.jpg';

    import FilledHeartIcon from '@/components/icons/FilledHeartIcon.vue';
    import FilledArrowIcon from '@/components/icons/FilledArrowIcon.vue';
    import PauseIcon from '@/components/icons/PauseIcon.vue';
    import ShareIcon from '@/components/icons/ShareIcon.vue';
    import TimeIcon from '@/components/icons/TimeIcon.vue';


    export default {
        components: {
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
                            name: 'Mom\'s Whiskey (feat. Kota the Friend) Whiskey (feat. Kota the Friend) Whiskey (feat. Kota the Friend)'
                        },

                        popularity: 100000,
                        duration: '08:25' 
                    },
                    {
                        track: {
                            name: 'Mom\'s Whiskey (feat. Kota the Friend) Whiskey (feat. Kota the Friend) Whiskey (feat. Kota the Friend)'
                        },

                        popularity: 1000000000,
                        duration: '08:25' 
                    },
                    {
                        track: {
                            name: 'Mom\'s Whiskey (feat. Kota the Friend) Whiskey (feat. Kota the Friend) Whiskey (feat. Kota the Friend)'
                        },

                        popularity: 10000,
                        duration: '08:25' 
                    },
                    {
                        track: {
                            name: 'Mom\'s Whiskey (feat. Kota the Friend) Whiskey (feat. Kota the Friend) Whiskey (feat. Kota the Friend)'
                        },

                        popularity: 100000,
                        duration: '08:25' 
                    },
                ]
            }
        },
    };
</script> 