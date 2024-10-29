<script lang="ts">
    import { onMount } from 'svelte';
    import { goto } from '$app/navigation';
	import Nav from './Nav.svelte';

    function changeToBackgroundColor() {
        const header = document.querySelector('header')!;
        window.addEventListener('scroll', () => {
            if (window.scrollY > 0) {
                header.style.backgroundColor = 'rgba(0, 0, 0, 0.9)';
                header.style.transition = 'background-color 0.3s';
            } else {
                header.style.backgroundColor = 'rgba(0, 0, 0, 0)';
                header.style.transition = 'background-color 0.3s';
            }
        });
    }
    onMount(() => {
        changeToBackgroundColor();
    });
</script>

<header>
	<h1 class="title logo-text" on:click={() => goto('/')} style="cursor: pointer;" >KYUNGHO KIM</h1>
	<Nav />
</header>

<style>
	@import url('../style/fonts.css');
	header {
        position: fixed;
        top: 0;
        left: 0;
        width: 92.5vw;
        z-index: 1000;
		display: flex;
		justify-content: space-between;
		align-items: center;
		background-color: rgba(0, 0, 0, 0);
		padding: 1rem 2rem;
		color: #F2F2F2;
	}

	.title {
		font-size: 1rem;
		font-weight: bold;
		letter-spacing: 0.1rem;
	}
</style>