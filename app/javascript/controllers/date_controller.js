import { Controller } from "@hotwired/stimulus";

// Connects to data-controller="date"
export default class extends Controller {
  static targets = ["end", "start", "result"];

  static values = {
    price: Number,
  };
  connect() {}

  calcule() {
    const end = new Date(this.endTarget.value);
    const start = new Date(this.startTarget.value);
    const result =
      (Math.abs(end - start) * this.priceValue) / (3600 * 1000 * 24);
    console.log(result);

    this.resultTarget.innerText = result;
  }
}
