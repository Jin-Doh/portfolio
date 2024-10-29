<script>
	import { slide } from "svelte/transition";

	export let title = "Dropdown Title";
	let isOpen = false;

	function toggleDropdown() {
		isOpen = !isOpen;
	}
</script>

<head>
	<link
		rel="stylesheet"
		href="https://fonts.googleapis.com/css2?family=Material+Symbols+Outlined:opsz,wght,FILL,GRAD@20..48,100..700,0..1,-50..200&icon_names=expand_circle_up&icon_names=expand_circle_down"
	/>
	<link
		rel="stylesheet"
		href="https://fonts.googleapis.com/css2?family=Material+Symbols+Outlined:opsz,wght,FILL,GRAD@20..48,100..700,0..1,-50..200"
	/>
</head>

<div class="dropdown-container">
	<div class="dropdown-header" on:click={toggleDropdown}>
		<h2 class="dropdown-title">{title}</h2>
		{#if isOpen}
			<span class="material-symbols-outlined dropdown-icon">expand_circle_up</span>
		{:else}
			<span class="material-symbols-outlined dropdown-icon">expand_circle_down</span>
		{/if}
	</div>
	{#if isOpen}
		<div class="dropdown-content" transition:slide>
			<slot></slot> <!-- 드롭다운 안에 표시될 콘텐츠 삽입 -->
		</div>
	{/if}
</div>

<style>
    @import '../../style/fonts.css';
    @import '../../style/theme.css';

	.dropdown-container {
		margin-top: 1rem;
		border: 1px solid #ccc;
		border-radius: 5px;
	}

	.dropdown-header {
		display: flex;
		justify-content: space-between;
		align-items: center;
		cursor: pointer;
		padding: 1rem;
        /* background-color: #282a36; */
        /* background-color: #36282A; */
        background-color: #464852;
        border-color: #464852;
		border-bottom: 1px solid #464852;
		border-radius: 5px 5px 0 0;
	}

	.dropdown-title {
		font-weight: bold;
		margin: 0;
	}

	.dropdown-icon {
		font-size: 1.5rem;
	}

	.dropdown-content {
		padding: 1rem;
		border-radius: 0 0 5px 5px;
	}
</style>