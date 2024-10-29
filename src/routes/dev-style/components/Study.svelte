<script lang="ts">
	import Dropdown from './Dropdown.svelte';
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

<div class="how-to-study">
	<Dropdown title="How to Study">
		<div class="learning-process text-light">
			<h2>학습 과정 및 접근 방법</h2>
			<ul>
				<li>
					<h3>1. 최신 트렌드와 정보 탐색</h3>
					<p class="text-regular">
						주로 Youtube, Facebook, Reddit, 기술 블로그를 통해 새로운 정보와 동향을 파악합니다.
					</p>
					<p>
                        최신 개발 트렌드 및 기존 기술의 업데이트 사항을 파악하고, 기존 방식에서 효율성 및 안정성을 높일 수 있는 방법을 고민합니다.
                        최근에는 Python 3.13 업데이트를 통한 실험적 GIL 제거, 실험적 JIT 도입과 같은 업데이트 정보를 알게 되어 이에 대한 공부를 진행하고 있습니다.
					</p>
				</li>
                <div class="mini-line"></div>
				<li>
					<h3>2. 추가 정보 조사</h3>
					<p class="text-regular">
						관련 자료의 심화 조사를 위해 Google, Stack Overflow, 공식 문서 등을 활용하여 기술적 배경과 개념을 보강합니다.
					</p>
					<p>
						이러한 심화 조사를 통해 필요한 개념을 이해하고, 실무에 적용할 수 있도록 기초를 다집니다.<br>예를 들어, Python GIL 제거, JIT 도입에 따른 영향을 파악하고, 기존 코드에서 어떻게 적용할 수 있는지 고민하고 있습니다.
					</p>
				</li>
                <div class="mini-line"></div>
				<li>
					<h3>3. 실제 적용 및 실습</h3>
					<p class="text-regular">새로운 지식을 기반으로 테스트 코드를 작성해 성능을 확인해봅니다.</p>
					<p>
						코딩 편의성, 처리 시간, 안정성 등의 테스트 결과를 바탕으로 구현 방식을 검토하고, 기존 코드 또는 방식과 비교합니다.<br>
                        이를 통해 실제적인 지식 체득과 응용 능력을 향상시킵니다.<br>
                        기존 Nivida AMP를 사용하던 기존 환경에서 Pytorch AMP으로 전환해 기존 대비 빠른 구현 속도와 코딩 편의성을 확인했습니다.
					</p>
				</li>
                <div class="mini-line"></div>
				<li>
					<h3>4. 평가 및 개선</h3>
					<p class="text-regular">
						ChatGPT, Gemini 등 LLM을 활용해 구현 방식을 평가하고 문제를 점검하며 개선 방향을 도출합니다.
					</p>
					<p>
						개선점을 지속적으로 반영하여 효율적이고 유지 보수가 용이한 코드를 작성할 수 있도록 합니다.<br>
                        예를 들어, Pytorch AMP 사용시 unscale, optimizer step이 잘못된 위치에 있어 학습이 제대로 이루어지지 않을 수 있던 문제를 조기에 발견하고, 수정하여 학습을 진행했습니다.
					</p>
				</li>
                <div class="mini-line"></div>
                <li>
                    <h3>5. 기록</h3>
                    <p class="text-regular">
                        Obsidian을 활용해 학습한 지식 중 주요한 부분과 코드 구현 과정에서의 문제점, 해결 방법 등을 기록합니다.
                    </p>
                    <p>
                        학습의 망각 곡선을 극복하고, 지속적인 학습 및 성장을 위해 기록을 통해 지식을 정리하고, 복습합니다.
                    </p>
                </li>
			</ul>
		</div>
	</Dropdown>
</div>

<style>
	@import './code-style.css';
	@import '../../style/fonts.css';

	.how-to-study {
		margin-top: 1rem;
	}

    .mini-line {
        border-bottom: 1px solid #333;
    }

	.learning-process {
		margin-top: 1rem;
		background-color: #0d0d0d;
		padding: 1.5rem;
	}

	.learning-process h2 {
		font-size: 1.5rem;
		margin-bottom: 1rem;
	}

	.learning-process ul {
		list-style-type: none;
		padding: 0;
	}

	.learning-process li {
		margin-bottom: 1rem;
	}

	.learning-process h3 {
		margin-bottom: 0.5rem;
	}

	.learning-process p {
		margin-bottom: 0.5rem;
	}
</style>
