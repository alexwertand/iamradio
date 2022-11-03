<template>
    <main class="pl-18 pr-18 pl-lg-32 pr-lg-32 pl-xxl-44 pr-xxl-44">
        <h1 class="mb-15 mb-xxl-35 fs-18 fs-lg-22">Авторы</h1>

        <div class="authors">
            <section
                v-for="({name, songsCount, commentsCount, likesCount}, index) in fakeData"
                class="author-item">
                <router-link
                    :to="{name: 'author'}"
                    class="d-block slider-link mb-8 position-relative rounded-circle overflow-hidden">
                    <span class="slider-link-hover position-absolute d-flex d-flex-center w-100 h-100 background-1 transparent">
                        <EyeIcon/>
                    </span>

                    <img
                        class="img-fluid"
                        :src="srcSet[0]"
                        alt="">
                </router-link>

                <h3 class="mb-5 font-weight-normal inter-medium fs-14 fs-xxl-18 text-center">{{ name }}</h3>

                <div class="d-flex justify-content-between align-items-center">
                    <div class="d-flex align-items-center">
                        <music-note-icon
                            width="16"
                            height="16"
                            class="mr-5"/>

                        <span class="fs-13 gray-1">{{ songsCount }}</span>
                    </div>

                    <div class="d-flex align-items-center">
                        <comment-icon
                            width="16"
                            height="16"
                            class="mr-5"/>

                        <span class="fs-13 gray-1">{{ commentsCount }}</span>
                    </div>

                    <div class="d-flex align-items-center">
                        <filled-heart-icon
                            width="16"
                            height="16"
                            class="mr-5"/>

                        <span class="fs-13 gray-1">{{ likesCount }}</span>
                    </div>
                </div>
            </section>
        </div>
    </main>
</template>

<script>
    import autor_test_photo from '@/assets/images/autor_test_photo.png';
    import MusicNoteIcon from '@/components/icons/MusicNoteIcon.vue';
    import CommentIcon from '@/components/icons/CommentIcon.vue';
    import FilledHeartIcon from '@/components/icons/FilledHeartIcon.vue';
    import EyeIcon from '@/components/icons/EyeIcon.vue';

    export default {
        components: {
            MusicNoteIcon,
            CommentIcon,
            FilledHeartIcon,
            EyeIcon

        },
        data() {
            return {
                srcSet: [autor_test_photo],
                fakeData: [
                    {
                        name: 'Dan Smirnov',
                        songsCount: 500,
                        commentsCount: 300,
                        likesCount: 78
                    },
                    {
                        name: 'Dan Smirnov',
                        songsCount: 500,
                        commentsCount: 300,
                        likesCount: 78
                    },
                    {
                        name: 'Dan Smirnov',
                        songsCount: 500,
                        commentsCount: 300,
                        likesCount: 78
                    },
                    {
                        name: 'Dan Smirnov',
                        songsCount: 500,
                        commentsCount: 300,
                        likesCount: 78
                    },
                    {
                        name: 'Dan Smirnov',
                        songsCount: 500,
                        commentsCount: 300,
                        likesCount: 78
                    },
                    {
                        name: 'Dan Smirnov',
                        songsCount: 500,
                        commentsCount: 300,
                        likesCount: 78
                    },
                    {
                        name: 'Dan Smirnov',
                        songsCount: 500,
                        commentsCount: 300,
                        likesCount: 78
                    },
                    {
                        name: 'Dan Smirnov',
                        songsCount: 500,
                        commentsCount: 300,
                        likesCount: 78
                    },
                    {
                        name: 'Dan Smirnov',
                        songsCount: 500,
                        commentsCount: 300,
                        likesCount: 78
                    },
                    {
                        name: 'Dan Smirnov',
                        songsCount: 500,
                        commentsCount: 300,
                        likesCount: 78
                    },
                    {
                        name: 'Dan Smirnov',
                        songsCount: 500,
                        commentsCount: 300,
                        likesCount: 78
                    },
                    {
                        name: 'Dan Smirnov',
                        songsCount: 500,
                        commentsCount: 300,
                        likesCount: 78
                    },
                ]
            }
        }
    }
</script>

<style scoped>
    .authors {
        display: grid;
        grid-template-columns: repeat(auto-fill, 45%);
        grid-gap: 1rem;
        justify-content: space-between;
    }
    .author-item {

    }

    @media(max-width: 991px) and (orientation: landscape) {
        .authors {
            grid-template-columns: repeat(auto-fill, 30%);
        }
    }

    @media(min-width: 992px) {
        .authors {
            grid-template-columns: repeat(auto-fill, 164px);
        }
    }
</style>