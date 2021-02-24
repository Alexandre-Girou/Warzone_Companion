const handleForm = () => {
  const select = document.querySelector("#category");
  select.addEventListener("change", (event) => {
    const value = event.target.value;
    if(value === "Tricks") {
      const lvl = document.querySelector("#level");
      lvl.classList.remove("hidden")   
    }
  })
}

export { handleForm }