<script lang="ts">
	import Header from '../components/Header.svelte';
	import Footer from '../components/Footer.svelte';
	import { onMount } from 'svelte';

	let datas: any = {};
	let projects: any[] = [];
	let backend = ['Python', 'Pytorch', 'FastAPI', 'REST API', 'gRPC'];
	let frontend = ['HTML', 'CSS', 'JavaScript', 'Svelte', 'React', 'Flutter'];
	let devops = [
		'Docker',
		'Kubernetes',
		'Azure',
		'Git',
		'Gitlab',
		'Grafana',
		'Prometheus',
		'OpenSSH'
	];
	let database = ['MySQL', 'SQLite3', 'PostgreSQL'];
	let showSummary = false;

	onMount(async () => {
		const res = await fetch('/projects.json');
		datas = await res.json();
		projects = datas.projects.filter((project: any) => project.subject);
	});

	function getSkillClass(skill: string) {
		if (backend.includes(skill)) return 'backend-tag';
		if (frontend.includes(skill)) return 'frontend-tag';
		if (devops.includes(skill)) return 'devops-tag';
		if (database.includes(skill)) return 'database-tag';
		return 'other-tag';
	}

	function toggleSummary() {
		showSummary = !showSummary;
	}

	function scrollToProject(i: number) {
		const target = document.getElementById(`project-${i}`);
		if (target) {
			target.scrollIntoView({ behavior: 'smooth', block: 'start' });
			window.scrollBy(0, -10);
		}
	}
</script>

<Header />
<main>
	<div class="summary">
		<div class="toggle-summary-container">
			<button class="toggle-summary text-bold" on:click={toggleSummary}>
				<!-- {showSummary ? 'Hide Summary' : 'Show Summary'} -->
				<!-- use svg image '/icons/arrow_drop_down' and '/icons/arrow_drop_up' -->
				{#if showSummary}
					<svg class="material-symbols-outlined" width="24" height="24" viewBox="0 0 24 24">
						<path d="M7 10l5 5 5-5z"></path>
					</svg>
				{:else}
					<svg class="material-symbols-outlined" width="24" height="24" viewBox="0 0 24 24">
						<path d="M7 14l5-5 5 5z"></path>
					</svg>
				{/if}
			</button>
		</div>
		{#if showSummary}
			<ul class="summary-list">
				{#each projects as project, i}
					<button class="summary-item" on:click={() => scrollToProject(i)}>
						<h3 class="summary-title text-regular">{project.subject}</h3>
						<div class="summary-skills">
							{#each project.skills as skill}
								<span class={`text-light skill-tag ${getSkillClass(skill)}`}>{skill}</span>
							{/each}
						</div>
					</button>
				{/each}
			</ul>
		{/if}
	</div>

	<div class="project">
		<h2 class="project-title text-bold">PROJECTS</h2>
		{#each projects as project, i}
			<div id={`project-${i}`} class="project-content">
				<h3 class="project-subject text-bold">{project.subject}</h3>
				<p class="project-period text-light">{project.period}</p>
				<p class="project-role text-light">{project.role}</p>
				<div class="project-skill text-regular">
					{#each project.skills as skill}
						<span class={`skill-tag ${getSkillClass(skill)}`}>{skill}</span>
					{/each}
				</div>
				<!-- <p class="project-description text-light">{project.description.join(', ')}</p>
				<p class="project-result text-light">{project.result.join(', ')}</p>
				<p class="project-insight text-light">{project.insight.join(', ')}</p> -->
				<!-- make it `- ~` -->
				<div class="project-description text-light">
					<p class="text-regular">프로젝트 설명</p>
					<ul>
						{#each project.description as desc}
							<li>{desc}</li>
						{/each}
					</ul>
				</div>
				<div class="project-result text-light">
					<p class="text-regular">프로젝트 성과</p>
					<ul>
						{#each project.result as res}
							<li>{res}</li>
						{/each}
					</ul>
				</div>
				<div class="project-insight text-light">
					<p class="text-regular">프로젝트를 통해 배운 점</p>
					<ul>
						{#each project.insight as ins}
							<li>{ins}</li>
						{/each}
					</ul>
				</div>
			</div>
		{/each}
	</div>
</main>
<Footer />

<style>
	@import url('../style/fonts.css');
	@import url('../style/theme.css');

	.material-symbols-outlined {
		fill: currentColor;
		width: 1em;
		height: 1em;
		display: inline-block;
		font-size: 24px;
		user-select: none;
	}

	.summary {
		padding: 1rem;
		background-color: #1a1a1a;
		border-radius: 0.5rem;
		margin-bottom: 2rem;
	}

	.toggle-summary-container {
		display: flex;
		justify-content: center;
		margin-top: 3.5rem;
	}

	.toggle-summary {
		background-color: #007acc;
		color: #ffffff;
		border: none;
		/* padding: 0.5rem 1rem; */
		cursor: pointer;
		transition: background-color 0.2s ease;
		border-radius: 0.5rem;
	}

	.toggle-summary:hover {
		background-color: #005fa3;
	}

	.summary-list {
		margin: 1rem 0;
		list-style: none;
		padding: 0;
	}

	.summary-item {
		width: 100%;
		padding: 1rem;
		background-color: #2a2a2a;
		border-radius: 0.5rem;
		margin-bottom: 0.5rem;
		cursor: pointer;
		transition: background-color 0.2s ease;
		border: none;
		display: flex;
		justify-content: space-between;
		align-items: center;
	}

	.summary-item:hover {
		background-color: #333;
	}

	.summary-title {
		margin: 0;
		font-size: 1.1rem;
		color: #e0e0e0;
	}

	.summary-skills {
		display: flex;
		flex-wrap: wrap;
		gap: 0.5rem;
	}

	.skill-tag {
		padding: 0.25rem 0.5rem;
		border-radius: 12px;
		font-size: 0.75rem;
		display: inline-block;
		margin: 0.1rem 0;
	}

	.backend-tag {
		background-color: #2d9cdb;
		color: #ffffff;
	}

	.frontend-tag {
		background-color: #27ae60;
		color: #ffffff;
	}

	.devops-tag {
		background-color: #f39c12;
		color: #ffffff;
	}

	.database-tag {
		background-color: #8e44ad;
		color: #ffffff;
	}

	.other-tag {
		background-color: #7f8c8d;
		color: #ffffff;
	}

	.project {
		padding: 2rem;
		background-color: #0d0d0d;
		color: #f2f2f2;
		border-radius: 0.5rem;
	}

	.project-title {
		font-size: 2rem;
		text-align: center;
		margin-bottom: 2rem;
		color: #e0e0e0;
	}

	.project-content {
		padding: 1.5rem;
		background-color: #1a1a1a;
		border-radius: 0.5rem;
		margin-bottom: 1rem;
		box-shadow: 0 2px 4px rgba(0, 0, 0, 0.2);
	}

	.project-subject {
		font-size: 1.5rem;
		color: #e0e0e0;
		margin-bottom: 0.5rem;
	}

	.project-period,
	.project-role,
	.project-description,
	.project-result,
	.project-insight {
		margin-bottom: 0.5rem;
	}

	.project-skill {
		display: flex;
		flex-wrap: wrap;
		gap: 0.5rem;
		margin-bottom: 1rem;
	}

	.project-description,
	.project-result,
	.project-insight {
		background-color: #2a2a2a;
		padding: 1.25rem;
		border-radius: 0.25rem;
		margin-bottom: 0.75rem;
		line-height: 1.5;
	}
</style>
