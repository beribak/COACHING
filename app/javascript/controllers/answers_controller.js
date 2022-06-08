import { Controller } from "@hotwired/stimulus"
// console.log("sDSD")
export default class extends Controller {
  static targets = ["answerbox", "requestbox"]
  connect() {
    console.log(this.answerboxTarget)
  }

  request(event) {
    event.preventDefault()
    this.requestboxTarget.style.display = "none";
    this.answerboxTarget.style.display = "block";
  }
}
