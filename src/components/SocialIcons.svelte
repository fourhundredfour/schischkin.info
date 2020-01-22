<style lang="scss">
:global(.icon) {
    font-size: 25pt;
    cursor: pointer;
    margin-right: .2rem;
    color: rgba(0, 0, 0, 0.4);
    transition: color .4s;
    &:hover {
        color: rgba(0, 0, 0, 1);
    }
}
a {
    color: none;
    text-decoration: none;
    border: none;
}
</style>
<script>
export let socialMediaLinks = {};
import Icon from 'fa-svelte'
import * as fa from '@fortawesome/free-brands-svg-icons'
</script>

{#each socialMediaLinks as social}
    <a href={social.url} target="_blank">
        <Icon icon={fa[social.icon]} class="icon" />
    </a>
{/each}
