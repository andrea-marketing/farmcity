import { Controller } from "@hotwired/stimulus"

export default class extends Controller {
  static targets = ["form", "input", "producers", "markets"]


  update(event) {
    const url = `${this.formTarget.action}?query=${this.inputTarget.value}`
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
