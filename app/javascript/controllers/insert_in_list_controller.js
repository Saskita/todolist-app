import { Controller } from "stimulus"
import { csrfToken } from "@rails/ujs";

export default class extends Controller {
  static targets = ['items', 'form'];
  static values = { position: String };

  async send(e) {
    e.preventDefault();

    const options = {
      method: 'POST',
      headers: { 'Accept': "application/json",
                  'X-CSRF-Token': csrfToken()
                },
      body: new FormData(this.formTarget)
    };

    const response = await fetch(this.formTarget.action, options);
    const data = await response.json();
    this.itemsTarget.insertAdjacentHTML(this.positionValue, data.html);
    // this.formTarget.outerHTML = data.form;
    console.log(data)
  }
}




