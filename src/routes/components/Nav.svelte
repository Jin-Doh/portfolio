<script lang="ts">
	import { goto } from '$app/navigation';
	import { slide } from 'svelte/transition';
	import { onMount, onDestroy } from 'svelte';
	import { browser } from '$app/environment';

	let isMenuOpen = false;

	// 메뉴 열기/닫기 토글 함수
	function toggleMenu() {
		isMenuOpen = !isMenuOpen;
	}

	// 외부 클릭 감지 함수
	function handleClickOutside(event: MouseEvent) {
		const menu = document.querySelector('.nav-menu-mobile');
		const button = document.querySelector('.menu-button');

		// 메뉴가 열려 있고 클릭한 요소가 메뉴나 버튼이 아닐 때 닫기
		if (
			isMenuOpen &&
			!menu?.contains(event.target as Node) &&
			!button?.contains(event.target as Node)
		) {
			isMenuOpen = false;
		}
	}

	// 컴포넌트가 마운트될 때 외부 클릭 감지 이벤트 리스너 추가
	if (browser) {
		onMount(() => {
			window.addEventListener('click', handleClickOutside);
		});

		// 컴포넌트가 언마운트될 때 이벤트 리스너 제거
		onDestroy(() => {
			window.removeEventListener('click', handleClickOutside);
		});
	}
</script>

<head>
	<link
		rel="stylesheet"
		href="https://fonts.googleapis.com/css2?family=Material+Symbols+Outlined:opsz,wght,FILL,GRAD@20..48,100..700,0..1,-50..200&icon_names=menu"
	/>
</head>

<nav class="navbar">
	<!-- 모바일 메뉴 버튼 (모바일에서만 보임) -->
	<button class="menu-button" on:click={toggleMenu}>
		<span class="material-symbols-outlined">menu</span>
	</button>

	<!-- 데스크톱에서는 항상 표시되는 기본 네비게이션 -->
	<ul class="nav-menu-desktop text-light">
		<li>
			<a href="/dev-style" on:click|preventDefault={() => goto('/dev-style')}>Dev Style</a>
		</li>
		<li>
			<a href="/projects" on:click|preventDefault={() => goto('/projects')}>Projects</a>
		</li>
		<li>
			<a href="/contact" on:click|preventDefault={() => goto('/contact')}>Contact</a>
		</li>
	</ul>

	<!-- 모바일 메뉴 (슬라이드 효과 적용) -->
	{#if isMenuOpen}
		<ul class="nav-menu-mobile text-regular" transition:slide>
			<li>
				<a
					href="/dev-style"
					on:click|preventDefault={() => {
						goto('/dev-style');
						toggleMenu();
					}}>Dev Style</a
				>
			</li>
			<li>
				<a
					href="/projects"
					on:click|preventDefault={() => {
						goto('/projects');
						toggleMenu();
					}}>Projects</a
				>
			</li>
			<li>
				<a
					href="/contact"
					on:click|preventDefault={() => {
						goto('/contact');
						toggleMenu();
					}}>Contact</a
				>
			</li>
		</ul>
	{/if}
</nav>

<style>
	@import url('../style/fonts.css');

	/* 공통 스타일 */
	.navbar {
		display: flex;
		justify-content: space-between;
		align-items: center;
		padding: 1rem;
		position: relative;
	}

	/* 모바일 메뉴 버튼 */
	.menu-button {
		background: none;
		border: none;
		color: #f2f2f2;
		font-size: 1.5rem;
		cursor: pointer;
		display: none;
	}

	/* 데스크톱 네비게이션 메뉴 */
	.nav-menu-desktop {
		display: flex;
		list-style: none;
		gap: 1.5rem;
		padding: 0;
		margin: 0;
	}

	.nav-menu-desktop li a {
		text-decoration: none;
		color: #f2f2f2;
		font-size: 1rem;
		transition: color 0.2s ease;
	}

	.nav-menu-desktop li a:hover {
		color: #ffffff;
		font-weight: 400;
	}

	/* 모바일 네비게이션 메뉴 */
	.nav-menu-mobile {
		position: fixed;
		right: 0;
		top: 0;
		width: 60%;
		height: 20vh;
		background-color: #333;
		color: #f2f2f2;
		padding-top: 2rem;
		padding-left: 0;
		box-shadow: -2px 0 5px rgba(0, 0, 0, 0.3);
		z-index: 1000;
		display: flex;
		flex-direction: column;
		gap: 1.5rem;
		border-radius: 5px 0 0 5px;
	}

	.nav-menu-mobile li {
		list-style: none;
		padding-left: 2rem;
	}

	.nav-menu-mobile li a {
		color: #f2f2f2;
		text-decoration: none;
		font-size: 1.2rem;
	}

	.nav-menu-mobile li a:hover {
		color: #ffffff;
		font-weight: bold;
	}

	/* 반응형 설정 */
	@media (max-width: 768px) {
		/* 모바일에서 메뉴 버튼을 보이게 설정 */
		.menu-button {
			display: block;
		}

		/* 모바일에서는 데스크톱 메뉴 숨김 */
		.nav-menu-desktop {
			display: none;
		}
	}

	@media (min-width: 768px) {
		/* 데스크톱에서는 모바일 메뉴 숨김 */
		.nav-menu-mobile {
			display: none;
		}
	}
</style>
