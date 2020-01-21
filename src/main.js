import App from './App.svelte';

const app = new App({
	target: document.body,
	props: {
		name: 'world'
	}
});

/*
!! UNCOMMENT THIS IF YOU WANT THE ADVANTAGES OF SERVICE-WORKER INSTEAD OF HTTP2 !!
if ('serviceWorker' in navigator) {
	navigator.serviceWorker.register('service-worker.js');
}
*/
export default app;