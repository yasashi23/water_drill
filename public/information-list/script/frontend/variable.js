const close = document.querySelector(".close")
const modalEdit = document.querySelector(".edit-data-modal")
const processScreen = document.querySelector(".edit-process")
const editListData = document.querySelectorAll(".edit-data")
const buttonUpdate = document.querySelector(".btn-update")
const updateForm = document.querySelector("#updateForm")
let numberOfDataList
// get data from list data
const driller = document.querySelectorAll(".body-data .data-list tr:nth-child(n+2) td:first-child")
const  assistans = document.querySelectorAll(".body-data .data-list tr:nth-child(n+2) td:nth-child(2)")
const  earn = document.querySelectorAll(".body-data .data-list tr:nth-child(n+2) td:nth-child(3)")