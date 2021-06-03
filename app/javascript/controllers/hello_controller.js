// Visit The Stimulus Handbook for more details 
// https://stimulusjs.org/handbook/introduction
// 
// This example controller works with specially annotated HTML like:
//
// <div data-controller="hello">
//   <h1 data-target="hello.output"></h1>
// </div>

import { Controller } from "stimulus"

export default class extends Controller {
  static targets = [ "output" ]


  connect() {
    this.outputTarget.textContent = 'Hello, Stimulus!'
  }
  // load()
  // {
  //   fetch(this.urlValue)
  //     .then(response => response.text())
  //     .this(html => this.element.innerHTML= html)
  //   //this.headingTarget.innerText ="ihi"
      
  // }
  // greet()
  // {
  //   const element=this.nameTarget
  //   const name=element.values
  //   console.log('Hello,${name}!')
  // }
}

