<!-- This script is code snippet function (not contain 'copy' func) -->

<script lang="ts">
    import { onMount } from 'svelte';

    onMount(() => {
        const codeSnippets = document.querySelectorAll('.code-snippet');
        codeSnippets.forEach((codeSnippet) => {
            const copyButton = codeSnippet.querySelector('.copy-button');
            const code = codeSnippet.querySelector('code');
        });
    });
</script>

<style>
    .code-snippet {
        position: relative;
        margin: 1rem 0;
        padding: 1rem;
        background-color: #f4f4f4;
        border-left: 5px solid #0d0d0d;
    }

    .copy-button {
        position: absolute;
        top: 0.5rem;
        right: 0.5rem;
        padding: 0.5rem 1rem;
        background-color: #0d0d0d;
        color: white;
        border: none;
        border-radius: 5px;
        cursor: pointer;
    }

    code {
        display: block;
        white-space: pre-wrap;
    }
</style>