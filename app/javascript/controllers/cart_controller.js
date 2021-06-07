import { Controller } from "stimulus"

export default class extends Controller {
  static targets = [ "output" ]

  Summary(){
    var output=this.outputTargets
    var each_one =""
    for (var i=0,len=output.length;i<len;i++)
    {
      each_one +=output[i].textContent;

    }
      alert(each_one)
  }
}