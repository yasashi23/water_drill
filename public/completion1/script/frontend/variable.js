const currentURL = window.location.href;
const splitUrl = currentURL.split('/')[4].split('-')
const host = "http://localhost:3000"
console.log(splitUrl)