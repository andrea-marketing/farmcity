import { Controller } from "@hotwired/stimulus"

export default class extends Controller {
  static targets = ["input", "button"]

  disable() {
    this.inputTarget.classList.toggle("d-none")
  }
}
