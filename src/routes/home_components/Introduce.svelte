<div class="introduce">
	<div class="introduce-content">
		<div class="left">
			<img src="/hao.webp" alt="" width="200rem" />
		</div>
		<div class="right">
			<h1 class="text-bold">안녕하세요.<br />매일 성장하는 개발자, 김경호입니다.</h1>
			<!-- <p class="text-light">
				2023년부터 인공지능 기반 PTSD 치료 서비스를 개발하던 초기 스타트업에서 코파운더로 합류하여,
				Flutter, gRPC, Firebase 등을 활용한 기술 스택을 결정하고, Git 관리 방식을 도입한 경험이
				있습니다. 또한, On-premise 서버를 구축하며 제한된 자원 내 서비스를 안정적으로 운영하는
				방법을 체득했습니다. 비록 해당 스타트업의 서비스는 자금 부족으로 인해 종료되었지만, 앞선
				경험을 중심으로 더 나은 세상을 위한 서비스에 기여하는 엔지니어로 성장하고자 합니다.<br />
				다양한 플랫폼으로의 이식과 서버 확장을 고려하여 Docker 환경에서 개발하는 것을 선호하며, 빠르게
				개발 및 테스트를 수행할 수 있는 Python을 주 언어로 사용합니다. Python 기반 RESTful API 서버를
				설계 할 때, 최초 모놀리식 개발에서 추후 MSA 개발로 전환할 수 있음을 고려하여 비동기 처리 및 경량화를
				강점으로 가진 FastAPI를 선호합니다. 다만, API 아키텍처가 RESTful API로 고정될 필요가 없으며,
				오디오 데이터 혹은 파일 데이터 등과 같이 대규모 파일의 빈번한 송수신이 있다는 전제 하에 gRPC도
				고려합니다. 백엔드 설계 과정에서 무엇보다 중요하게 여기는 점은 백엔드 서버의 경우, 다양한 채널에서
				사용된다는 점을 고려하였을 때 고가용성과 높은 접근성, 보안입니다.<br />
				데이터베이스는 PostgreSQL, SQLite를 주로 사용하며, MySQL 또한 사용 경험이 있습니다. 초기 스타트업에서의
				경험을 토대로 데이터베이스 설계 과정에서 가장 경계하는 부분은 추후 데이터베이스 확장을 고려하지
				않은 스키마, 트리거 구성입니다. 해당 사항을 방지하기 위해 데이터베이스 설계 당시 데이터베이스
				정규화 정도에 대한 고민을 신중하게 합니다. 데이터베이스 실제 운용 과정에서는 쿼리 최적화 등의
				성능도 중요하지만, On-Premise 환경에서 서버 장애 경험 탓에 백업 서버와 고가용성, 모니터링을 가장
				중요시합니다.<br />
				진행한 프로젝트의 대부분이 계약 관계에서 이루어져 소스 코드를 공개할 수는 없는 점은 아쉽지만,
				면접 등을 통해 해당 부분을 최대한 보여드릴 수 있도록 하겠습니다.<br />
				감사합니다.
			</p> -->
			<p class="text-light">
				인공지능 기반 PTSD 치료 서비스를 개발하던 초기 스타트업에서 코파운더로 합류해 Flutter, gRPC,
				Firebase 등을 활용한 기술 스택을 결정하고, Git 관리 방식을 도입했습니다.
			</p>
			<p class="text-light">
				또한, On-premise 서버를 구축하며 제한된 자원으로 서비스를 안정적으로 운영하는 방법을
				익혔습니다. 비록 해당 서비스는 자금 부족으로 마무리되었지만, 이 경험을 바탕으로 더 나은
				세상을 위한 서비스에 기여하는 엔지니어로 성장하고자 합니다.
			</p>
			<!-- <h1 class="text-bold">'좋은 코드'를 고민하는<br>백엔드 개발자 김경호입니다.</h1> -->
			<!-- <p class="text-light">개발자가 두 명 뿐인 회사에서 개발 책임자로 근무하며, DevOps, 백엔드, 프론트엔드, 머신러닝 엔지니어로서 업무를 수행했습니다. 이른 시기에 개발팀장 역할을 수행하며, 기술 결정에 관한 고민, Git 관리 방식 등에 대한 고민, 서비스 규모에 대한 고민 등 개발팀 내 다양한 요소들과 기획팀과의 협업을 다양하게 경험했습니다. 그런 경험을 바탕으로 더 나은 세상을 위한 프로젝트에 참여하고, 더 안정적인 서비스를 고민합니다.</p> -->
		</div>
	</div>
</div>

<style>
	@import url('../style/fonts.css');
	.introduce {
		background-image: radial-gradient(
			circle 75rem at bottom right,
			#f43b47 20%,
			#453a94 80%,
			#000000
		);
		display: flex;
		justify-content: center;
		align-items: center;
		flex-direction: row;
		width: 100%;
		height: 60vh;
		/* height: 30rem; */
	}

	.introduce::before {
		content: '';
		position: absolute;
		width: 100%;
		height: 60vh;
		/* height: 30rem; */
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

	@media (max-width: 768px) {
		.introduce {
			height: 100vh;
		}

		.introduce::before {
			height: 100vh;
		}

		.introduce-content {
			flex-direction: column;
		}

		.left {
			width: 100%;
		}

		.right {
			width: 100%;
		}
	}
</style>
