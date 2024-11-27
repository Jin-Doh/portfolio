<script>
	import Dropdown from './Dropdown.svelte';
</script>

<div class="git-style">
	<Dropdown title="Git Convention">
		<p>효율적인 협업과 이력 관리를 위해 다음과 같은 Git Convention을 사용합니다.</p>
		<pre>
        <code>
[타입]: [제목]

[본문]

유관 이슈: #[issue number, optional]
        </code>
    </pre>
		<div class="desc-types text-light">
			<h3>타입</h3>
			<ul>
				<li><strong>feature</strong>: 새로운 기능 추가 (예: 회원가입 기능 구현)</li>
				<li><strong>fix</strong>: 버그 수정 (예: 로그인 시 발생하는 NullPointerException 해결)</li>
				<li><strong>docs</strong>: 문서 수정 (예: API 스펙 문서 보완)</li>
				<li><strong>test</strong>: 테스트 코드 추가 (예: 회원가입 검증 로직 테스트 코드 추가)</li>
				<li><strong>refactor</strong>: 코드 리팩토링 (예: 비즈니스 로직 분리 및 최적화)</li>
				<li><strong>style</strong>: 코드 스타일 변경 (예: 코드 컨벤션에 따른 포맷 정리)</li>
				<li><strong>chore</strong>: 기타 (예: 패키지 업데이트)</li>
			</ul>
		</div>
		<div class="desc-reason text-light">
			<h3>Git Convention 도입 배경</h3>
			<p>
				업무 과정에서 다양한 커밋 메시지로 인해 작업 이력 추적에 혼란을 겪었고, 이를 개선하기
				위해 Git Convention을 도입했습니다.<br />
				예를 들어, 기능 개발과 버그 수정 사항이 혼재된 경우, 명확한 커밋 메시지가 없어 소스 분석에 어려움이
				있었습니다.<br />
				Git Convention을 사용함으로써 작업의 성격을 바로 파악할 수 있어, 협업 효율성과 유지보수의 용이성이
				크게 향상되었습니다.
			</p>
		</div>
	</Dropdown>
</div>

<style>
	@import '../../style/fonts.css';
	@import './code-style.css';

	.git-style {
		margin-top: 1rem;
	}

	.toggle-line {
		display: flex;
		justify-content: space-between;
		align-items: center;
		cursor: pointer;
	}

	.desc-types {
		margin-top: 1rem;
		background-color: #0d0d0d;
		padding: 1.5rem;
		border-radius: 5px;
		text-align: left;
	}

	.desc-reason {
		margin-top: 1rem;
		background-color: #0d0d0d;
		padding: 1.5rem;
		border-radius: 5px;
		text-align: left;
	}

    .desc-reason p {
        word-break: keep-all;
    }
</style>
