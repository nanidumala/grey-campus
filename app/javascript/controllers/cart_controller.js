import { Controller } from "stimulus"

export default class extends Controller {
  static targets = [ "output" ]

  summary(){
      alert(this.outputTarget.textContent)
  }
}