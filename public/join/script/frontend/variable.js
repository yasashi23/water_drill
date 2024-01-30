const close = document.querySelector(".container__body-information .container__modal-close")
const modalEdit = document.querySelector(".container__body-information .container__modal")
const processScreen = document.querySelector(".container__body-information .container__edit-process")
const editListData = document.querySelectorAll(".container__body-information .container__edit-data")
const buttonUpdate = document.querySelector(".container__body-information .container__btn")
const updateForm = document.querySelector(".container__body-information #updateForm")
const navbar_input = document.querySelector(".container__navbar .container__input-navbar")
const navbar_information = document.querySelector(".container__navbar .container__information-navbar")
const body_input = document.querySelector(".container__body-input")
const body_information = document.querySelector(".container__body-information")
const input_form = document.querySelector(".container__body-input .container__user-input form")
const input_post_btn = document.querySelector(".container__body-input .container__user-input form button")
let numberOfDataList


// get data from list data
const driller = document.querySelectorAll(".container__body-information .container__data .container__data-list tr:nth-child(n+2) td:first-child")
const  assistans = document.querySelectorAll(".container__body-information .container__data .container__data-list tr:nth-child(n+2) td:nth-child(2)")
const  earn = document.querySelectorAll(".container__body-information .container__data .container__data-list tr:nth-child(n+2) td:nth-child(3)")
