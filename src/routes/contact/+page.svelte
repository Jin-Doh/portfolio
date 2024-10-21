<script lang="ts">
    import Header from '../components/Header.svelte';
    import Footer from '../components/Footer.svelte';

    import { page } from '$app/stores';
    import { onMount } from 'svelte';
</script>

<Header />
<main>
    <div class="contact-sec">
        <h1 class="contact-title text-bold">Contact Me</h1>
        <div class="description">
            <p class="text-light">Python Developer, BackEnd Engineer, 김경호.</p>
        </div>
        <div class="column">
            <div class="left">
                <h2 class="text-bold">Email</h2>
            </div>
            <div class="right">
                <p class="text-light">hw8kv76j4j@privaterelay.appleid.com</p>
            </div>
        </div>
        <div class="notice">
            <p class="text-light notice-text">※ 연락처 악용 및 스팸 연락 인해 부득이 포워딩 이메일을 기입했습니다.</p>
            <p class="text-light notice-text">※ 이메일로 연락 주시면 빠른 시일 내에 답변 드리겠습니다.</p>
        </div>
    </div>
</main>
<Footer />

<style>
    @import url('../style/fonts.css');
    @import url('../style/theme.css');

    main {
        height: 93vh;
    }

    .contact-sec {
        display: flex;
        justify-content: center;
        align-items: center;
        flex-direction: column;
        width: 100%;
        height: 85vh;
    }

    .contact-title {
        font-size: 2rem;
        color: #F2F2F2;
        margin-bottom: 0;
    }

    .description {
        display: flex;
        justify-content: center;
        align-items: center;
        flex-direction: column;
        border-bottom: 1px solid #F2F2F2;
        font-size: 0.85rem;
    }

    .column {
        display: flex;
        justify-content: center;
        align-items: center;
        width: 100%;
        max-width: 1200px;
        padding: 0 3rem;
    }

    .left {
        display: flex;
        align-items: center;
    }

    .left h2 {
        font-size: 1.5rem;
        color: #F2F2F2;
        margin-bottom: 1rem;
    }

    .right {
        display: flex;
        flex-direction: column;
        justify-content: center;
        align-items: flex-start;
        padding-left: 3rem;
    }

    .right p {
        font-size: 1rem;
        color: #F2F2F2;
        margin-bottom: 1rem;
    }

    .notice {
        display: flex;
        justify-content: center;
        align-items: center;
        flex-direction: column;
        font-size: 0.85rem;
        margin-top: 2rem;
    }

    .notice-text {
        color: #F2F2F2;
        margin: 0;
    }
</style>