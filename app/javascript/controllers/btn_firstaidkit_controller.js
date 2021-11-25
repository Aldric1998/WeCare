import { Controller } from "stimulus"

export default class extends Controller {

  static targets = ["content"]

  // connect() {
  //   // this.contentTarget.classList.remove("d-none")
  //   console.log("hello")
  // }

  clickbtn(event) {
    // this.contentTarget.classList.remove("d-none")
    console.log(event, this.contentTarget)

  }

}
