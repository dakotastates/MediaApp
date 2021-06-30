// select all arrows
const arrows = document.querySelectorAll(".arrow");
// select all movie lists
const movieLists = document.querySelectorAll(".movie-list");

// iterate over each arrow
arrows.forEach((arrow, i)=>{
// find number of items within a particular movielist
  const itemNumber = movieLists[i].querySelectorAll("img").length;
// count number of clicks to keep track of limit
  let clickCounter = 0
// when arrow is clicked event listener
  arrow.addEventListener("click",()=>{
    // calculate the number of items depending on width
    const ratio = Math.floor(window.innerWidth/270);
    // after every click increase click counter
    clickCounter++;
    // if the item number minus the number of clicks plus the 4 already in frame is larger than zero
    // also if screen width changes account for number of needed clicks
    if(itemNumber - (4+clickCounter) + (4 - ratio) >= 0){
      // use arrow index to find correct movie list
      // translateX moves the content when arrow clicked
      movieLists[i].style.transform = `translateX(${movieLists[i].computedStyleMap().get("transform")[0].x.value
      -300}px)`;
    } else{
      // return to front of list when end of list
      movieLists[i].style.transform = "translateX(0)"
      // reset click counter to zero
      clickCounter=0
    }
  })
})

// TOGGLE

// activate toggle ball for light and dark style
// select the toggle ball
const ball = document.querySelector(".toggle-ball");
// select all containers needing to be changed
const items = document.querySelectorAll(".container, .movie-list-title, .navbar-container, .sidebar, .left-menu-icon, .toggle");

// when the toggle ball is clicked
ball.addEventListener("click",()=>{
  items.forEach(item=>{
    item.classList.toggle("active")
  })
  // when ball is clicked change ball color when active
  ball.classList.toggle("active")
})
