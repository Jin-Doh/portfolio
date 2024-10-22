<script lang="ts">
	import Header from '../components/Header.svelte';
	import Footer from '../components/Footer.svelte';
	import { onMount, tick } from 'svelte';

	let isLoading = true;
	let showSummary = true;

	let datas: any = {};
	let projects: any[] = [];

	let backend = ['Python', 'PyTorch', 'FastAPI', 'RESTful API', 'gRPC'];
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
	let ml = ['CUDA', 'cuDNN', 'TensorBoard'];
	let database = ['MySQL', 'SQLite3', 'PostgreSQL'];

	let currentPage = 1;
	let projectsPerPage = 2;

	onMount(async () => {
		try {
			const res = await fetch('/projects.json');
			datas = await res.json();
			projects = datas.projects
				.filter((project: any) => project.subject)
				.map((project: any, index: number) => ({ ...project, id: index + 1 }));
		} catch (error) {
			console.error('Error fetching projects:', error);
		} finally {
			isLoading = false;
		}
	});

	function getSkillClass(skill: string) {
		if (backend.includes(skill)) return 'backend-tag';
		if (frontend.includes(skill)) return 'frontend-tag';
		if (devops.includes(skill)) return 'devops-tag';
		if (database.includes(skill)) return 'database-tag';
		if (ml.includes(skill)) return 'ml-tag';
		return 'other-tag';
	}

	function toggleSummary() {
		showSummary = !showSummary;
	}

	async function scrollToProject(projectId: number) {
		const targetPage = Math.ceil(projectId / projectsPerPage);
		if (currentPage !== targetPage) {
			currentPage = targetPage;
			await tick(); // Wait for DOM updates
		}
		const target = document.getElementById(`project-${projectId}`);
		if (target) {
			target.scrollIntoView({ behavior: 'smooth', block: 'start' });
		}
	}

	async function prevPage() {
		if (currentPage > 1) {
			await currentPage--;
			showSummary = false;
			// await scrollToProject((currentPage - 1) * projectsPerPage + 1);
			// scroll top of the page smoothly
			await window.scrollTo({ top: 0, behavior: 'smooth' });
		}
		
	}

	async function nextPage() {
		const totalPages = Math.ceil(projects.length / projectsPerPage);
		if (currentPage < totalPages) {
			await currentPage++;
			showSummary = false;
			// await scrollToProject((currentPage - 1) * projectsPerPage + 1);
			await window.scrollTo({ top: 0, behavior: 'smooth' });
		}
	}

	// Make getPaginatedProjects reactive
	$: paginatedProjects = (() => {
		const start = (currentPage - 1) * projectsPerPage;
		const end = start + projectsPerPage;
		return projects.slice(start, end);
	})();
</script>

<Header />
<main>
	<div class="summary">
		<div class="toggle-summary-container">
			<button class="toggle-summary text-bold" on:click={toggleSummary}>
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
				{#each projects as project (project.id)}
					<button class="summary-item" on:click={() => scrollToProject(project.id)}>
						<h3 class="summary-title text-regular">{project.subject}</h3>
						<div class="summary-skills">
							{#each project.skills as skill (skill)}
								<span class={`text-light skill-tag ${getSkillClass(skill)}`}>{skill}</span>
							{/each}
						</div>
					</button>
				{/each}
			</ul>
		{/if}
	</div>

	{#if isLoading}
		<div>Loading...</div>
	{:else}
		<div class="project">
			<h2 class="project-title text-bold">PROJECTS</h2>
			{#each paginatedProjects as project (project.id)}
				<div id={`project-${project.id}`} class="project-content">
					<h3 class="project-subject text-bold">{project.subject}</h3>
					<p class="project-period text-light">{project.period}</p>
					<p class="project-role text-light">{project.role}</p>
					<div class="project-skill text-regular">
						{#each project.skills as skill (skill)}
							<span class={`skill-tag ${getSkillClass(skill)}`}>{skill}</span>
						{/each}
					</div>
					<div class="project-description text-light">
						<p class="text-regular">프로젝트 설명</p>
						<ul>
							{#each project.description as desc (desc)}
								<li>{desc}</li>
							{/each}
						</ul>
					</div>
					<div class="project-result text-light">
						<p class="text-regular">프로젝트 성과</p>
						<ul>
							{#each project.result as res (res)}
								<li>{res}</li>
							{/each}
						</ul>
					</div>
					<div class="project-insight text-light">
						<p class="text-regular">프로젝트를 통해 배운 점</p>
						<ul>
							{#each project.insight as ins (ins)}
								<li>{ins}</li>
							{/each}
						</ul>
					</div>
					<div class="project-reference">
						{#each project.reference || [] as ref, index (index)}
							{#if typeof ref === 'string' && ref.startsWith('<iframe')}
								{@html ref}
							{:else if typeof ref === 'string' && ref.endsWith('.webp')}
								<img class="ref-img" src={ref} alt="reference" />
							{:else if typeof ref === 'string' && ref.startsWith('<button')}
								{@html ref}
							{:else}
								<p></p>
							{/if}
						{/each}
					</div>
				</div>
			{/each}
			<div class="pagination text-regular">
				<button class="pagination-button" on:click={prevPage} disabled={currentPage === 1}>
					이전 페이지
				</button>
				<span class="pagination-info text-regular">
					{currentPage} / {Math.ceil(projects.length / projectsPerPage)}
				</span>
				<button
					class="pagination-button text-regular"
					on:click={nextPage}
					disabled={currentPage === Math.ceil(projects.length / projectsPerPage)}
				>
					다음 페이지
				</button>
			</div>
		</div>
	{/if}
</main>
<Footer />

<style>
	@import url('./style.css');
</style>
