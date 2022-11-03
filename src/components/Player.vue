<template>
    <div class="d-none d-lg-flex player-box align-items-center justify-content-between position-fixed position-bottom w-100 z-500 background-0 pl-18 pr-18 pl-lg-32 pr-lg-32 pl-xxl-44 pr-xxl-44">
        <div class="d-flex align-items-center">
            <button
                type="button">
                <previous-play-icon/>
            </button>

            <button
                type="button">
                <arrow-icon class="mr-lg-25 ml-lg-25 mr-xxl-25 ml-xxl-25"/> 
            </button>

            <button
                type="button">
                <next-play-icon/>
            </button>
        </div>

        <div class="d-flex align-items-center">
            <div class="ether-status d-flex align-items-center mr-lg-15 mr-xxl-25">
                <span class="ether-icon in-ether mr-10"></span>

                <span class="fs-xxl-18 green-1">В ефире</span>
            </div>

            <div class="mr-15 img-size-5 rounded-8 overflow-hidden">
                <img class="img-fluid" :src="srcSet[0]" alt="">
            </div>

            <div class="d-flex flex-column">
                <span class="fs-xxl-18 inter-bold">Дві Кави</span>

                <span class="fs-14 fs-xxl-16">KOST'</span>
            </div>

            <div class="divider mr-lg-25 ml-lg-25 mr-xxl-25 ml-xxl-25 background-3"></div>

            <div class="d-flex mr-lg-15 mr-xxl-25">
                <span class="mr-8 gray-2 fs-lg-24 fs-xxl-28">
                    252
                </span>

                <span class="gray-1 fs-lg-11 fs-xxl-13">
                    Слушают <br> сейчас
                </span>
            </div>

            <div class="d-flex mr-lg-15 mr-xxl-25">
                <span class="mr-8 gray-2 fs-lg-24 fs-xxl-28">
                    4111
                </span>

                <span class="gray-1 fs-lg-11 fs-xxl-13">
                    Количество <br> голосов
                </span>
            </div>

            <div class="d-flex mr-lg-15 mr-xxl-25">
                <span class="mr-8 gray-2 fs-lg-24 fs-xxl-28">
                    32
                </span>

                <span class="gray-1 fs-lg-11 fs-xxl-13">
                    Количество <br> комментариев
                </span>
            </div>
        </div>

        <div class="d-flex align-items-center">
            <button
                type="button"
                class="mr-lg-20 mr-xxl-25">
                <volume-icon/>
            </button>

            <button
                type="button"
                class="mr-lg-20 mr-xxl-25">
                <heart-icon/>
            </button>

            <button type="button">
                <share-icon/>
            </button>
        </div>
    </div>
</template>

<script>
    import PreviousPlayIcon from '@/components/icons/PreviousPlayIcon.vue'
    import NextPlayIcon from '@/components/icons/NextPlayIcon.vue'
    import ArrowIcon from '@/components/icons/ArrowIcon.vue'
    import VolumeIcon from '@/components/icons/VolumeIcon.vue'
    import HeartIcon from '@/components/icons/HeartIcon.vue'
    import ShareIcon from '@/components/icons/ShareIcon.vue'

    import album_test from '@/assets/images/album_test.jpg';

    export default {
        components: {
            PreviousPlayIcon,
            NextPlayIcon,
            ArrowIcon,
            VolumeIcon,
            HeartIcon,
            ShareIcon
        },
        data() {
            return {
                srcSet: [album_test],
            }
        },
    }
</script>