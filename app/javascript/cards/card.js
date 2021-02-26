const showCardDetails = () => {
  const select = document.querySelector("#card-details");
  if(select) { 
    select.addEventListener("click", (event) => {
      const card = document.querySelector(".hidden-content");
      card.classList.toggle("hidden");
    });
  }
};

export { showCardDetails }