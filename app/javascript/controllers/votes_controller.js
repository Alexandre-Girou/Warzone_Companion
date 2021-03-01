import { Controller } from "stimulus"
import { fetchWithToken } from "../utils/fetch_with_token"

export default class extends Controller {
  static values = { cardId: String };
  static targets = [ "upcounter" ];

  upvote() {
    fetchWithToken(`/cards/${this.cardIdValue}/votes`, { 
      method: "POST", 
      body: JSON.stringify({ status: "upvote" }),
      headers: { 
        accept: 'application/json',
        'Content-Type': 'application/json' 
      }
     })
      .then(response => response.json())
      .then((data) => {
        if (data.status === 'succeed') {
          this.upcounterTarget.innerHTML = '';
          this.upcounterTarget.insertAdjacentHTML("beforeend", data.votes)
        }
      });
  }
}
