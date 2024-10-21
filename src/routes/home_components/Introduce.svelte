<div class="introduce">
    <div class="introduce-content">
        <div class="left">
            <img src="/hao.webp" alt="" width="200rem" />
        </div>
        <div class="right">
            <h1 class="text-bold">'좋은 코드'를 고민하는<br>백엔드 개발자 김경호입니다.</h1>
            <p class="text-light">개발자가 두 명 뿐인 회사에서 개발 책임자로 근무하며, DevOps, 백엔드, 프론트엔드, 머신러닝 엔지니어로서 업무를 수행했습니다. 이른 시기에 개발팀장 역할을 수행하며, 기술 결정에 관한 고민, Git 관리 방식 등에 대한 고민, 서비스 규모에 대한 고민 등 개발팀 내 다양한 요소들과 기획팀과의 협업을 다양하게 경험했습니다. 그런 경험을 바탕으로 더 나은 세상을 위한 프로젝트에 참여하고, 더 안정적인 서비스를 고민합니다.</p>
        </div>
    </div>
</div>

<style>
    @import url('../style/fonts.css');
    .introduce {
        background-image: radial-gradient(circle 75rem at bottom right, #f43b47 20%, #453a94 80%, #000000);
		display: flex;
        justify-content: center;
        align-items: center;
        flex-direction: row;
		width: 100%;
		height: 40vh;
	}

    .introduce::before {
        content: '';
        position: absolute;
        width: 100%;
        height: 40%;
        background-color: rgba(0, 0, 0, 0.5);
        z-index: 1;
    }

    .introduce-content {
        position: relative;
        z-index: 2;
        display: flex;
        justify-content: center;
        align-items: center;
        flex-direction: row;
        width: 100%;
        height: 100%;
        padding: 2rem;
    }
    
    .left {
        width: 30%;
        display: flex;
        justify-content: center;
        align-items: center;
    }

    .right {
        width: 60%;
        display: flex;
        justify-content: center;
        align-items: center;
        flex-direction: column;
        word-break: keep-all;
        text-align: center;
    }
</style>