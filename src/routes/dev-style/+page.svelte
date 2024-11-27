<script>
	import CodingStyle from './components/CodingStyle.svelte';
	import Study from './components/Study.svelte';
	import Tools from './components/Tools.svelte';
	import GitConvention from './components/GitConvention.svelte';
</script>

<div class="dev-style text-bold">
	<h1 class="title text-bold">저는 이렇게 일합니다.</h1>	
	<Tools />
	<div class="border-line"></div>
	<Study />
	<div class="border-line"></div>
	<GitConvention />
	<div class="border-line"></div>
	<CodingStyle />
</div>

<style>
	@import '../style/theme.css';
	@import '../style/fonts.css';
	@import './components/code-style.css';

	.dev-style {
		padding: 1rem;
		min-height: 88.5vh;
	}

	.title {
		padding: 2rem 0;
		font-size: 2rem;
		margin-bottom: 1rem;
		text-align: center;
	}

	.border-line {
		margin: 1rem 0;
		border-bottom: 1px solid whitesmoke;
	}
</style>