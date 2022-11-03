<template>
    <svg
        :width="width"
        :height="height"
        viewBox="0 0 44 44"
        fill="none"
        xmlns="http://www.w3.org/2000/svg">
        <path d="M44 22C44 34.1503 34.1503 44 22 44C9.84974 44 0 34.1503 0 22C0 9.84974 9.84974 0 22 0C34.1503 0 44 9.84974 44 22Z" fill="white"/>
        <path d="M32 22L17 30.6603V13.3397L32 22Z" fill="black"/>
    </svg>
</template>

<script>
    export default {
        props: {
            width: {
                type: [String, Number],
                default: 36
            },
            height: {
                type: [String, Number],
                default: 36
            }
        }
    }
</script>