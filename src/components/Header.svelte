<style lang="scss">
    $output-color: rgba(255, 255, 255, .9);
    .console-link {
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
</script>
<header>
    <h1>Daniel Schischkin</h1>
    <div class="terminal">
        <Terminal>
            Apprenticeship as IT Specialist with focus on application development at <a target="_blank" class="console-link" href="https://surplex.com">Surplex GmbH</a>.
        </Terminal>
    </div>
</header>