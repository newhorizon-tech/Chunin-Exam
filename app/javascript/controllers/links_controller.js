import Rails from "@rails/ujs";
import { Controller } from "stimulus"

export default class extends Controller {
  static targets = [ 'input','output' ];

  connect() {
    console.log(1111)
  }

  display(event) {
    const [data, status, xhr] = event.detail
    console.log(data, status, xhr)
    this.outputTarget.innerHTML = xhr.response;
    this.outputTarget.style.display = "block";
    this.inputTarget.value = '';
  }
}
