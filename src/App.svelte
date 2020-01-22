<script>
  import Header from './components/Header.svelte';
  import SocialIcons from './components/SocialIcons.svelte';
  import social from './config/social.json';
</script>
<style>
.icons {
  width: 100%;
  text-align: center;
}
</style>

<Header />
<div class="icons">
  <SocialIcons socialMediaLinks={social} />
</div>
<main>

</main>