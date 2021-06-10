import { Controller } from "stimulus"

export default class extends Controller {
  static targets = [ "output" ]
  static values = { url: String }

  connect(){
    console.log("text")
  }

  summary(){
    var output=this.outputTargets
    var each_one =""
    for (var i=0,len=output.length;i<len;i++)
    {
      each_one +=output[i].textContent;

    }
      alert(each_one)
  }   
  
  load(event) {
    const csrfToken = document.querySelector("[name='csrf-token']").getAttribute("content")
   // this.preventDefault();
    console.log(event.target)
    let product_id = event.target.getAttribute("id");
    //let cart_id = 26;


    fetch("http://localhost:3000/line_items", {
      method: 'POST',
      headers: {
        "X-CSRF-Token": csrfToken,
        "Content-type": "application/json"
    },
      body:JSON.stringify({product_id: product_id}),
      credentials: "same-origin"
  })
  // .then(response => response.json())
  // .then((data) =>  console.log(data))
  //  .catch((err)=>console.log(err))


//     fetch("http://localhost:3000/carts/26")
//     .then(response => response.text())
  
//     // Displaying results to console
//     .then(html => this.element.innerHTML = html)
// //     .then(response => response.json())
  
// // // Displaying results to console
// //     .then(json => console.log(json));
      }
        
  }