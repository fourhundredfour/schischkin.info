<style lang="scss">
    $output-color: rgba(255, 255, 255, .9);
    :global(.console-link) {
        color: $output-color;
        transition: all .5s;
        text-decoration: none;
        &:hover {
            text-decoration: underline;
        }
    }
    header {
        position: relative;
        width: 100%;
        margin-bottom: 1rem;
    }
    .terminal {
        margin: 0 auto;
        width: 100%;
    }
    @media (min-width: 1000px) {
        .terminal {
            width: 50%;
        }
    }
    h1 {
        text-align: center;
    }
</style>
<script>
import Terminal from './Terminal.svelte';
import information from '../config/information.json';
</script>
<header>
    <h1>{information.name}</h1>
    <div class="terminal">
        <Terminal>
            {@html information.jobTitle}
        </Terminal>
    </div>
</header>