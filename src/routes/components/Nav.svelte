<script>
	import { goto } from '$app/navigation';

	// function hoverEffect()
</script>

<nav>
	<ul>
		<li>
			<a
				href="/dev-style"
				class="text-light"
				on:click|preventDefault={() => goto('/dev-style')}>Dev Style</a
			>
		</li>
		<li>
			<a
				href="/projects"
				class="text-light"
				on:click|preventDefault={() => goto('/projects')}>Projects</a
			>
		</li>
		<li>
			<a
				href="/contact"
				class="text-light"
				on:click|preventDefault={() => goto('/contact')}>Contact</a
			>
		</li>
	</ul>
</nav>

<style>
	@import url('../style/fonts.css');
	nav {
		display: flex;
		width: 60%;
		justify-content: flex-end;
		margin-right: 3.5rem;
	}

	ul {
		display: flex;
		list-style: none;
		gap: 1.5rem;
		padding: 0;
		margin: 0;
	}

	li a {
		text-decoration: none;
		color: #f2f2f2;
		font-size: 1rem;
		transition: color 0.2s ease;
	}

	li a:hover {
		color: #ffffff;
		font-weight: 400;
		transition: color 0.2s ease, font-weight 0.2s ease;
	}
</style>
