// const showCardDetails = () => {
//   const select = document.querySelector("#card-details");
//   if(select) { 
//     select.addEventListener("click", (event) => {
//       const card = document.querySelector(".hidden-content");
//       card.classList.toggle("hidden");
//     });
//   }
// };

const showCardDetails = (card) => {
  const button = card.querySelector(".toggle-info")
  const details = card.querySelector(".hidden-content")
  button.addEventListener("click", () => {
    details.classList.toggle("hidden")
  })
};

const showCardsDetails = () => {
  const cards = document.querySelectorAll(".card");
  if (!cards) return;

  cards.forEach(showCardDetails)
};

export { showCardsDetails }
