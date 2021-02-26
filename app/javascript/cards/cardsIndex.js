const showIndexDetails = () => {
  document.querySelectorAll(".card-selector").forEach((card) => {
    const cardDetails = card.querySelector(".details");
    cardDetails.addEventListener("click", (event) => {
      console.log("hello")
      const item = card.querySelector(".hid-content");
      // card.forEach
      item.classList.toggle("hidden");
    });
  });
};

export { showIndexDetails }