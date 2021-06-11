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
    let a=0
    const csrfToken = document.querySelector("[name='csrf-token']").getAttribute("content")
    event.preventDefault();
    console.log(event.target)
    let product_id = event.target.getAttribute("id");
    //let cart_id = 26;


    fetch(this.urlValue,  {
      method: 'POST',
      headers: {
        "X-CSRF-Token": csrfToken,
        "Content-type": "application/json"
    },
      body:JSON.stringify({product_id: product_id}),
      credentials: "same-origin"
  })
  
  //.catch(err=>alert("error occurred"))
  .then(alert("product is added"))
  
  // .then(async response => {
  //     try {
  //      const data = await response.json()
  //      console.log('response data?', data)
  //    } catch(error) {
  //      console.log('Error happened here!')
  //      console.error(error)
  //    }
  //   })
  // .then(response => response.json())
  //  .then(json => console.log(json))
  // .then(response => response.json())
  // .then((data) =>  console.log(data))
  // .then(response => response.text())
  
  // // Displaying results to console
  // .then(data => console.log(event))
  //  //.catch((err)=>console.log(err))


//     fetch("http://localhost:3000/carts/26")

//     .then(response => response.text())          // convert to plain text
//   .then(html => this.element.innerHTML=html)
  
//     // Displaying results to console
//     //.then(response => response.json())
//     // .then(json => console.log(json))
//     //.then(results => {console.log(document)})
// //     .then(response => response.json())
  
// // // // Displaying results to console
// // //     .then(json => console.log(json));
      }
        
  }