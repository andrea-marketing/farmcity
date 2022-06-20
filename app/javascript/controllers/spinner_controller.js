import { Controller } from "stimulus"

export default class extends Controller {
  static targets = [ "image" ]

  connect() {
    console.log("spiner")
    setTimeout(() => {
      this.element.remove()
    }, 2500);
  }
}
