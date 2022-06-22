import { Controller } from "@hotwired/stimulus"

export default class extends Controller {
  static targets = ["form", "input", "producers", "markets"]

  connect() {
    console.log(this.inputTarget)
    console.log(this.formTarget)
    console.log(this.cardsTarget)
  }

  update(event) {
    const url = `${this.formTarget.action}?query=${this.inputTarget.value}`
    console.log(url)
    fetch(url , { headers: { "Accept": "application/json" } })
      .then(response => response.json())
      .then((data) => {
          console.log(data)
          this.producersTarget.innerHTML = data.producers
          this.marketsTarget.innerHTML = data.markets
        }
      )
    }
}
