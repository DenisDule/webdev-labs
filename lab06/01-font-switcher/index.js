let font = 1;

const makeBigger = () => {
   font += 0.1;
   document.querySelector("p").style.fontSize = `${font}em`;
   document.querySelector("h1").style.fontSize = `${font}em`;
   };

const makeSmaller = () => {
   font -= 0.1;
   document.querySelector(".content").style.fontSize = `${font}em`;
   document.querySelector("h1").style.fontSize = `${font}em`;
};


document.querySelector("#a1").addEventListener('click', makeBigger);
document.querySelector("#a2").addEventListener('click', makeSmaller);
