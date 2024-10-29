<script lang="ts">
    import Dropdown from './Dropdown.svelte';
</script>

<div class="tools">
    <Dropdown title="Development Environment">
        <p>개발 환경에 대한 설정 및 사용하는 도구를 소개합니다.</p>
        <!-- Mac OS: Sequoia 15.0.1 -->
        <!-- Cursor IDE: Version: 0.42.3 -->
        <!-- Docker 27.2.0, Docker desktop: 4.34.3 -->
        <!-- Prefer python version: Python 3.11 - 3.12 < Because after 3.11, converted many libraries with C, so it is faster than before versions -->
        <div class="os">
            <h3>OS</h3>
            <ul class="text-light">
                <li>Mac OS: Sequoia 15.0.1</li>
                <div class="mini-line"></div>
                <p class="text-regular">Note</p>
                <li>Major.0.0 버전이 출시했을 경우, 오류 등으로 인한 작업 차질이 생길 수 있어 Majgor.0.1부터 업데이트합니다.</li>
                <li>업데이트는 대게 보안 패치 요소도 함께하고 있으므로, 가급적이면 업데이트하는 편입니다.</li>
            </ul>
        </div>
        <div class="ide">
            <h3>IDE</h3>
            <ul class="text-light">
                <li>Cursor IDE: Version: 0.42.3</li>
                <div class="mini-line"></div>
                <p class="text-regular">Note</p>
                <li>기존에는 VS Code를 사용했지만, Cursor의 AI 기능 편의성으로 인해 전환했습니다.</li>
                <li>정보 제공 및 활용 동의는 최소한의 프로젝트 보안을 위해 동의하지 않습니다.</li>
            </ul>
        </div>
        <div class="docker">
            <h3>Docker</h3>
            <ul class="text-light">
                <li>Docker desktop: 4.34.3</li>
                <li>Docker: 27.2.0</li>
                <div class="mini-line"></div>
                <p class="text-regular">Note</p>
                <li>개인 사용 및 특정 규모 미만의 사업장에서는 여전히 Docker Desktop이 무료이므로 사용하고 있습니다.</li>
                <li>Docker Desktop의 GUI는 가급적이면 잘 사용하지 않으며, 대게 CLI 환경을 활용합니다.</li>
            </ul>
        </div>
        <div class="python">
            <h3>Python</h3>
            <ul class="text-light">
                <li>Python 3.11</li>
                <div class="mini-line"></div>
                <p class="text-regular">Note</p>
                <li>Python 3.11부터 많은 라이브러리가 C 언어 기반으로 변경되어 이전 버전보다 약 1.25배 빠릅니다.</li>
                <li>3.12은 PEP 규칙과 관련한 사항, 타입과 관련한 사항이 업데이트의 주요 사항이므로, 3.11과 3.12를 선택할 때 호환성이 높은 3.11을 선호합니다.</li>
            </ul>
        </div>
    </Dropdown>
</div>

<style>
    @import './code-style.css';
    @import '../../style/fonts.css';

    .tools {
        margin-top: 1rem;
    }

    .mini-line {
        margin-top: 1rem;
        border-bottom: 1px solid whitesmoke;
    }

    .toggle-line {
        display: flex;
        justify-content: space-between;
        align-items: center;
        cursor: pointer;
    }

    .os {
        margin-top: 1rem;
        background-color: #0d0d0d;
        padding: 1.5rem;
    }

    .ide {
        margin-top: 1rem;
        background-color: #0d0d0d;
        padding: 1.5rem;
    }

    .docker {
        margin-top: 1rem;
        background-color: #0d0d0d;
        padding: 1.5rem;
    }

    .python {
        margin-top: 1rem;
        background-color: #0d0d0d;
        padding: 1.5rem;
    }

    .os h3, .ide h3, .docker h3, .python h3 {
        margin-bottom: 1rem;
    }

    .os ul, .ide ul, .docker ul, .python ul {
        list-style: none;
    }
</style>