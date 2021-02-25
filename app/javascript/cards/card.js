const showCardDetails = () => {
  const select = document.querySelector("");
  select.addEventListener("click", (event) => {
    event.currentTarget.classList.toggle("");
  })
}

export { showCardDetails }