import { Controller } from "stimulus"

export default class extends Controller {

  static targets = ["content", "content2", "content3", "toggledbtn", "toggledbtn2", "toggledbtn3"]

  connect() {
    // this.contentTarget.classList.remove("d-none")
    console.log("hello")
  }

  clickbtn(event) {
    // this.contentTarget.classList.remove("d-none")
    // console.log(event.currentTarget.id, this.contentTarget)
    if (event.currentTarget.id == "btn1") {
      this.contentTarget.classList.toggle("d-none")
      this.toggledbtnTarget.classList.add("toggled-btn")
      this.toggledbtn2Target.classList.remove("toggled-btn")
      this.toggledbtn3Target.classList.remove("toggled-btn")
      this.content2Target.classList.add("d-none")
      this.content3Target.classList.add("d-none")
    }
    else if (event.currentTarget.id == "btn2") {
      this.content2Target.classList.toggle("d-none")
      this.toggledbtn2Target.classList.add("toggled-btn")
      this.toggledbtnTarget.classList.remove("toggled-btn")
      this.toggledbtn3Target.classList.remove("toggled-btn")
      this.contentTarget.classList.add("d-none")
      this.content3Target.classList.add("d-none")
    }

    else if (event.currentTarget.id == "btn3") {
      this.content3Target.classList.toggle("d-none")
      this.toggledbtn3Target.classList.add("toggled-btn")
      this.toggledbtnTarget.classList.remove("toggled-btn")
      this.toggledbtn2Target.classList.remove("toggled-btn")
      this.contentTarget.classList.add("d-none")
      this.content2Target.classList.add("d-none")
    }
  }

}
