const destroyDeck = (event) => {
  let id = event.target.id
  if (!id) id = event.target.parentNode.id
  const csrfToken = document.querySelector("[name='csrf-token']").content
  fetch(`/decks/${id}`, {
    method: "DELETE",
    headers:  { 
      accept: 'application/json',
      'Content-Type': 'application/json',
      "X-CSRF-Token": csrfToken,
    }
  })
  .then(data => data.json())
  .then((response) => {
    console.log(response)
    const deck = document.getElementById(`deck_${id}`)
    deck.remove()
  })
}

const deckDestroyer = () => {
  const buttons = document.querySelectorAll(".delete-btn")
  if (buttons.length < 1) return;

  buttons.forEach((button) => {
    button.addEventListener("click", destroyDeck)
  })
};

export { deckDestroyer };

