const violetHTML = document.getElementById('violet');
const vertHTML = document.getElementById('vert');
const orangeHTML = document.getElementById('orange');

let x;
let y;
let margeX;
let margeY;
let modeDeplacement = false;

violetHTML.addEventListener('mousedown', () => {
  margeX = x - parseInt(violetHTML.style.left);
  margeY = y - parseInt(violetHTML.style.top);
  modeDeplacement = true;
});
orangeHTML.addEventListener('mousedown', () => {
  margeX = x - parseInt(orangeHTML.style.left);
  margeY = y - parseInt(orangeHTML.style.top);
  modeDeplacement = true;
});
vertHTML.addEventListener('mousedown', () => {
  margeX = x - parseInt(vertHTML.style.left);
  margeY = y - parseInt(vertHTML.style.top);
  modeDeplacement = true;
});

violetHTML.addEventListener('mouseup', () => {
  modeDeplacement = false;
});
vertHTML.addEventListener('mouseup', () => {
  modeDeplacement = false;
});
orangeHTML.addEventListener('mouseup', () => {
  modeDeplacement = false;
});

document.addEventListener('mousemove', (evt) => {
  x = evt.clientX;
  y = evt.clientY;

  if (modeDeplacement) {
    violetHTML.style.left = evt.clientX - margeX;
    violetHTML.style.top = evt.clienty - margeY;
    vertHTML.style.left = evt.clientX - margeX;
    vertHTML.style.top = evt.clienty - margeY;
    orangeHTML.style.left = evt.clientX - margeX;
    orangeHTML.style.top = evt.clienty - margeY;
  }
});
