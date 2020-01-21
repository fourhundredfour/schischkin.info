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
    <Terminal>
        Apprenticeship as IT Specialist with focus on application development at <a target="_blank" class="console-link" href="https://surplex.com">Surplex GmbH</a>.
    </Terminal>
</header>