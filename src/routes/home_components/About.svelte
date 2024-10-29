<div class="about">
	<div class="about-content">
		<div class="left">
			<h1 class="text-bold">Career</h1>
		</div>
		<div class="right text-light">
			<p>2021.02 ~ 2022.08 : 2816 대표</p>
			<p>2022.07 ~ 2024.07 : 주식회사 알을깨는사람들 개발 책임자</p>
			<p>2024.04 ~ 2024.07 : 프리랜서 개발자</p>
		</div>
	</div>
</div>

<style>
	@import url('../style/fonts.css');

    .about {
        padding: 2rem 0;
        background-color: #0d0d0d;
    }

    .about-content {
        display: flex;
        justify-content: center;
        align-items: center;
        width: 100vw;
        /* padding: 0 3rem; */
    }

    .left {
        display: flex;
        align-items: center;
        padding-right: 8rem;
        border-right: 1px solid #f2f2f2;
    }

    .left h1 {
        font-size: 1.7rem;
        color: #f2f2f2;
        margin-bottom: 1rem;
    }

    .right {
        display: flex;
        flex-direction: column;
        justify-content: center;
        align-items: flex-start;
        padding-left: 5rem;
    }

    .right p {
        font-size: 1rem;
        color: #f2f2f2;
        margin-bottom: 1rem;
    }

    @media screen and (max-width: 768px) {
        .about-content {
            flex-direction: column;
        }

        .left {
            padding-right: 0;
            border-right: none;
            border-bottom: 1px solid #f2f2f2;
        }

        .right {
            padding-left: 0;
        }
    }
</style>
