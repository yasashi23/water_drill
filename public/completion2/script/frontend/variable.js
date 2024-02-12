const currentURL = window.location.href;
const url = new URL(currentURL)
const user = url.searchParams.get("user")
const num = url.searchParams.get("num")
const host = "http://localhost:3000"
const [container_user,container_number] = document.querySelectorAll('.container .container__table .container__user td span')
const total_depth = document.querySelector('.container__total-depth')

const [perliter_diesel,perliter_engine,perliter_grease] = document.querySelectorAll(".container__td-perliter span:last-child")
