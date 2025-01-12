<div class="introduce">
	<div class="introduce-content">
		<div class="left">
			<img src="/hao.webp" alt="" width="200rem" />
			<div class="sites">
				<div class="icon-background">
					<div class="github">
						<a href="https://github.com/Jin-Doh/" target="_blank">
							<img class="icon" src="/icons/github.svg" alt="github" width="60rem" />
						</a>
					</div>
				</div>
				<div class="icon-background">
					<div class="pypi">
						<a href="https://pypi.org/user/Jin-Doh/" target="_blank">
							<img class="icon" src="/icons/pypi.svg" alt="pypi" width="60rem" />
						</a>
					</div>
				</div>
			</div>
		</div>
		<div class="right">
			<h1 class="text-bold">문제 해결에 열정을 가진 개발자, 김경호입니다.</h1>
			<p class="text-light">
				2022년, 인공지능 기반 PTSD 치료 서비스 개발을 진행하던 초기 스타트업에서 코파운더로 합류하여
				기술책임자로서 다양한 역할을 수행했습니다. Flutter, gRPC, Firebase 등을 활용한 기술 스택을
				결정하고, Git 관리 방식을 도입함으로써 팀의 효율성과 서비스 기반 구축에 기여했습니다. 또한,
				제한된 자원 내에서 서비스를 안정적으로 운영할 수 있도록 온프레미스 서버, NAS를 구축하는
				경험을 쌓았습니다.
			</p>
			<p class="text-light">
				로컬-서버 개발 과정을 중요시하기에 이식에 용이한 Docker 환경에서 개발하는 것을 선호하며,
				빠른 개발 및 테스트를 가능하게 하는 Python을 주 언어로 사용합니다. Python 기반 RESTful API
				서버를 설계할 때, 최초 모놀리식 구조에서 마이크로서비스 아키텍처로 전환할 수 있도록 비동기
				처리와 경량화를 강점으로 가지는 FastAPI를 선택했습니다. 대규모 파일의 송수신이 있는 경우,
				기존 RESTful API 대신 gRPC를 사용하는 등 고가용성, 높은 접근성, 보안을 중심으로 백엔드
				설계를 고려합니다.
			</p>
			<p class="text-light">
				데이터베이스는 PostgreSQL, SQLite를 주로 사용하며, MySQL 사용 경험도 보유하고 있습니다.
				데이터베이스 설계 시에는 향후 확장을 고려한 정규화에 신경쓰며, 실제 운용 과정에서는 쿼리
				최적화뿐만 아니라 백업 서버 구축, 고가용성 유지, 모니터링 시스템 도입 등을 통해 안정적인
				서비스를 유지하는 데 주력하고 있습니다.
			</p>
			<p class="text-light">
				비전공 출신이기에 남들보다 더 공부하고, 이를 바탕으로 CS 지식을 비롯한 다양한 도메인을
				탐구하며, 문제를 다각도로 바라보려 노력합니다. CS 기초부터 알고리즘, 데이터베이스 관리 등
				폭넓은 지식을 학습하여 실제 프로젝트에 효과적으로 적용하고 있으며, 해당 과정을 즐기고
				있습니다. 앞으로도 백엔드 개발자로서 지속적으로 기술을 심화시키고, 팀과 함께 혁신적인
				서비스를 개발하여 세상을 더 나은 곳으로 만들어 나가고 싶습니다.
			</p>
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
		min-height: 60vh;
		width: 100%;
		height: auto;
		/* height: 30rem; */
	}

	.introduce::before {
		content: '';
		position: absolute;
		width: 100%;
		height: 100%;
		/* height: 60vh; */
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
		flex-direction: column;
	}

	.icon-background {
		margin-top: 1.5rem;
		margin-left: 1rem;
		margin-right: 1rem;
		background-color: snow;
		width: 3rem;
		height: 3rem;
		border-radius: 50%;
		padding: 1rem;
		display: flex;
		justify-content: center;
		align-items: center;
	}

	.sites {
		display: flex;
		justify-content: center;
		align-items: center;
		flex-direction: row;
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
