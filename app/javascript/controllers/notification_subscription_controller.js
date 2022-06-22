import { Controller } from "@hotwired/stimulus"
import consumer from "../channels/consumer"

export default class extends Controller {
  static values = { userId: Number }
  static targets = ["notifications", "bubble"]

  connect() {
    console.log(`Subscribed to the notification with the id ${this.userIdValue}.`)
    console.log(this.userIdValue)
    this.channel = consumer.subscriptions.create(
      { channel: "NotificationChannel", id: this.userIdValue },
      { received: data => {
        console.log(data);
        this.bubbleTarget.classList.remove('d-none');
        this.bubbleTarget.innerText = Number(this.bubbleTarget.innerText) + 1
      }
      }

    )
  }
}
