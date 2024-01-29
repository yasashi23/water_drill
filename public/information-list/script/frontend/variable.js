const close = document.querySelector(".container__modal-close")
const modalEdit = document.querySelector(".container__modal")
const processScreen = document.querySelector(".container__edit-process")
const editListData = document.querySelectorAll(".container__edit-data")
const buttonUpdate = document.querySelector(".container__btn")
const updateForm = document.querySelector("#updateForm")
let numberOfDataList
// get data from list data
const driller = document.querySelectorAll(".container__data .container__data-list tr:nth-child(n+2) td:first-child")
const  assistans = document.querySelectorAll(".container__data .container__data-list tr:nth-child(n+2) td:nth-child(2)")
const  earn = document.querySelectorAll(".container__data .container__data-list tr:nth-child(n+2) td:nth-child(3)")