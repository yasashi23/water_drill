const currentURL = window.location.href;
const url = new URL(currentURL)
const user = url.searchParams.get("user")
const num = url.searchParams.get("num")
const total_depth = document.querySelector('.container__total-depth') 
const downloadBtn = document.querySelector('.container__download')
const [profit_earnings,profit_total_cost,profit_profit] = document.querySelectorAll(".container .container__profit .container__table-profit tr td:last-child span:last-child")


const [container_user,container_number] = document.querySelectorAll('.container .container__table .container__user td span')
const [perliter_diesel,perliter_engine,perliter_grease] = document.querySelectorAll(".container__td-perliter span:last-child")

const [total_liter_diesel,total_liter_engine,total_liter_grease] = document.querySelectorAll(".container__td-total-liter")

const [total_cost_diesel,total_cost_engine,total_cost_grease] = document.querySelectorAll(".container__td-total-cost span:last-child")
