<style lang="scss">
@import url('https://fonts.googleapis.com/css?family=Gothic+A1&display=swap');
$input-color: rgb(0, 167, 58);
$output-color: rgba(255, 255, 255, .9);
.terminal {
    font-family: 'Gothic A1', sans-serif;
    position: relative;
    background: rgba(61, 61, 61, 1);
    padding: 10px;
    min-height: 2rem;
    border-radius: 2px;
    box-shadow: 1px 1px 1px rgba(61, 61, 61, .5);
    cursor: text;
    .input {
        background: none;
        border: none;
        color: $input-color;
        padding-left: 1rem;
        line-height: 2;
        &:before {
            content: '$ ';
            font-weight: bold;
        }
    }
    .output {
        padding-left: 1rem;
        color: $output-color;
        margin-bottom: 0;
    }
}
</style>
<script>
    import Typewriter from 'svelte-typewriter';
	import { fade } from 'svelte/transition';
 
    let showOutput = false;
    let cursorColor = "rgb(0, 167, 58)";
    function showJobTitle() {
        showOutput = true;
        cursorColor = null;
    }
</script>

<div class="terminal">
    <Typewriter cursor={cursorColor} interval={50} on:done={showJobTitle}>
        <span class="input">./current_job.sh</span>
    </Typewriter>
    {#if showOutput}
        <p class="output" transition:fade="{{duration: 400}}">
            <slot>
                Hello world!
            </slot>
        </p>
    {/if}
</div>