<script lang="ts">
	import Header from './components/Header.svelte';
	import Footer from './components/Footer.svelte';
    import About from './home_components/About.svelte';
	import Skillset from './home_components/Skillset.svelte';
	import Introduce from './home_components/Introduce.svelte';

	import { page } from '$app/stores';
	import { onMount } from 'svelte';
</script>

<Header />
<main>
	<div class="hero">
		<div class="hero-content">
			<h1 class="hero-title text-bold">PORTFOLIO</h1>
			<p class="hero-description text-light">Python Developer, 김경호</p>
		</div>
	</div>
	<Introduce />
    <About />
	<Skillset />
</main>
<Footer />

<style>
	@import url('style/fonts.css');
	@import url('style/theme.css');

	.hero {
		position: relative;
		background-image: url('/hero_image.webp');
		background-size: cover;
		background-position: center;
		display: flex;
		justify-content: center;
		align-items: center;
		flex-direction: column;
		width: 100%;
		height: 85vh;
	}

	.hero::before {
		content: '';
		position: absolute;
		top: 0;
		left: 0;
		width: 100%;
		height: 100%;
		background-color: rgba(0, 0, 0, 0.6);
		z-index: 1;
	}

	.hero-content {
		position: relative;
		z-index: 2;
	}

	.hero-title {
		font-size: 4rem;
		color: #f2f2f2;
		text-align: center;
	}

	.hero-description {
		font-size: 1rem;
		color: #f2f2f2;
		text-align: center;
	}
</style>
