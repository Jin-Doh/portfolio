<div class="skill">
    <div class="skill-content">
        <h1 class="text-bold">SKILLS</h1>
        <div class="skill-list text-light">
            <div class="section">
                <!-- 1. Python sections -->
                <h2 class="text-bold sec-name">BACKEND</h2>
                <ul>
                    <div class="row">
                        <img class="icon" src="/icons/python.svg" alt="python" />
                        <li>Python</li>
                    </div>
                    <div class="row">
                        <img class="icon" src="/icons/fastapi.svg" alt="fastapi" />
                        <li>Fast API</li>
                    </div>
                </ul>
            </div>
            <!-- 2. Frontend sections -->
            <div class="section">
                <h2 class="text-bold sec-name">FRONTEND</h2>
                <ul>
                    <div class="row">
                        <img src="/icons/flutter.svg" alt="flutter" class="icon">
                        <li>Flutter</li>
                    </div>
                    <div class="row">
                        <img src="/icons/svelte.svg" alt="svelte" class="icon">
                        <li>Svelte</li>
                    </div>
                </ul>
            </div>
            <div class="section">
                <!-- 3. ETC sections -->
                <h2 class="text-bold sec-name">ETC</h2>
                <ul>
                    <div class="row">
                        <img src="/icons/docker.svg" alt="docker" class="icon">
                        <li>Docker</li>
                    </div>
                    <div class="row">
                        <img src="/icons/kubernetes.svg" alt="kubernetes" class="icon">
                        <li>Kubernetes</li>
                    </div>
                    <div class="row">
                        <img src="/icons/azure.svg" alt="azure" class="icon">
                        <li>Azure</li>
                    </div>
                    <div class="row">
                        <img src="/icons/git.svg" alt="git" class="icon">
                        <li>Git</li>
                    </div>
                    <div class="row">
                        <img src="/icons/gitlab.svg" alt="gitlab" class="icon">
                        <li>Gitlab</li>
                    </div>
                    <div class="row">
                        <img class="icon" src="/icons/pytorch.svg" alt="pytorch" />
                        <li>Pytorch</li>
                    </div>
                </ul>
            </div>
        </div>
    </div>
</div>

<style>
    @import url('../style/fonts.css');
    @import url('../style/theme.css');

    .skill {
        padding: 2rem 0;
        background-color: #0d0d0d;
    }

    .skill-content {
        display: flex;
        flex-direction: column;
        justify-content: center;
        align-items: center;
    }

    .skill-list {
        display: flex;
        justify-content: space-between;
        align-items: stretch;
        flex-wrap: wrap;
        gap: 5rem;
    }

    .section {
        display: flex;
        flex-direction: column;
        justify-content: center;
        align-items: center;
        min-width: 12rem;
    }
    
    .section h2 {
        font-size: 1.7rem;
        color: #f2f2f2;
        margin-bottom: 1rem;
    }
    .section ul {
        list-style: none;
        padding: 0;
        margin: 0;
        display: flex;
        flex-direction: column;
        justify-content: space-evenly;
        height: 100%;
    }

    .section .sec-name {
        font-size: 1.25rem;
        color: #f2f2f2;
        margin-bottom: 1rem;
    }

    .row {
        display: flex;
        align-items: center;
        width: 8rem;
        height: 3rem;
        margin-bottom: 0.5rem;
    }

    .icon {
        width: 3rem;
        height: 2.2rem;
        margin-right: 0.5rem;
    }

    @media screen and (max-width: 768px) {
        .skill-list {
            flex-direction: column;
            gap: 2rem;
        }

        .section {
            min-width: 0;
        }
    }
</style>