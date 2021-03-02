const ellipsify = (str) => {
  if (str.length > 300) {
      return (str.substring(0, 300) + "...");
  }
  else {
  return str;
  }
};

const ellipsifyInit = () => {
  const divs = document.querySelectorAll(".target");
  if (!divs) return;

  divs.forEach((div) => {
    div.textContent = ellipsify(div.textContent);
  })
}

export { ellipsifyInit }
