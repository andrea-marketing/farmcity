import { Controller } from "@hotwired/stimulus"

export default class extends Controller {
  static targets = ["input", "button"]

  connect() {
    console.log("Hello from our first Stimulus controller")
  }
  disable() {
    this.inputTarget.classList.toggle("d-none")
    console.log(this.inputTarget.classList)
    console.log(this.buttonTarget)
  }
}
