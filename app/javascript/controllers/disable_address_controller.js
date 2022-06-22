import { Controller } from "@hotwired/stimulus"

export default class extends Controller {
  static targets = ["input", "button"]

connect() {
  console.log("max dummy")
}
  disable() {
    this.inputTarget.classList.toggle("d-none")
    this.buttonTarget.classList.toggle("d-none")
  }
}
