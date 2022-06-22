import { Controller } from "@hotwired/stimulus"

export default class extends Controller {
  static targets = ["form", "input", "cards"]

  connect() {
    console.log(this.inputTarget)
    console.log(this.formTarget)
    console.log(this.cardsTarget)
  }

  update(event) {
    const url = `${this.formTarget.action}?query=${this.inputTarget.value}`
    fetch(url)
      .then(response => response.text())
      .then((data) => {
        console.log(data)
          this.cardsTarget.innerHTML = data
        }
      )
    }
}
