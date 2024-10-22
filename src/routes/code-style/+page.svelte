<div class="code-style">
    <!-- show code style via code snippet what vite's -->
    <div class="code-style__header">
        <h1 class="code-style_title text-bold">Code Style</h1>
        <p class="code-style_description text-light">코드 스타일</p>

        <button class="code-style__summary-button" on:click={toggleSummary}>
            {#if showSummary}
                <svg class="code-style
                __summary-icon" xmlns="http://www.w3.org/2000/svg" viewBox="0 0 24 24">
                    <path d="M7 14l5-5 5 5z"></path>
                </svg>
            {:else}
                <svg class="code-style" xmlns="http://www.w3.org/2000/svg" viewBox="0 0 24 24">
                    <path d="M7 10l5 5 5-5z"></path>
                </svg>
            {/if}
        </button>
</div>