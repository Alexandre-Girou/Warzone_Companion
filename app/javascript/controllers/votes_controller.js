import { Controller } from "stimulus"
import { fetchWithToken } from "../utils/fetch_with_token"
export default class extends Controller {
  static values = { cardId: String };
  static targets = [ "upcounter", "downcounter" ];
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
          this.upcounterTarget.insertAdjacentHTML("beforeend", data.votes);
          this.colorupvote();
          if (document.querySelector('.downvoted')) {
            document.querySelector('.downvoted').classList.remove('downvoted')
            // document.querySelector('.downvotes-counter').decrementDownvotes
            let votenum = document.querySelector('.upvotes-counter');
            if (!votenum) return;
            votenum.innerHTML = data.upvotes;
            votenum = document.querySelector('.downvotes-counter');
            if (!votenum) return;
            votenum.innerHTML = data.downvotes;
          };
        };
      });
  };
  downvote() {
    fetchWithToken(`/cards/${this.cardIdValue}/votes`, { 
      method: "POST", 
      body: JSON.stringify({ status: "downvote" }),
      headers: { 
        accept: 'application/json',
        'Content-Type': 'application/json' 
      }
     })
      .then(response => response.json())
      .then((data) => {
        if (data.status === 'succeed') {
          this.downcounterTarget.innerHTML = '';
          this.downcounterTarget.insertAdjacentHTML("beforeend", data.votes);
          this.colordownvote();
          if (document.querySelector('.upvoted')) {
            document.querySelector('.upvoted').classList.remove('upvoted');
            let votenum = document.querySelector('.upvotes-counter');
            if (!votenum) return;
            votenum.innerHTML = data.upvotes;
            votenum = document.querySelector('.downvotes-counter');
            if (!votenum) return;
            votenum.innerHTML = data.downvotes;
          }
        };
      });
  };
  colorupvote() {
    document.querySelector('.fa-angle-double-up').classList.add("upvoted");
  }
  colordownvote() {
    document.querySelector('.fa-angle-double-down').classList.add("downvoted");
  }
  decrementUpvotes() {
    let votenum = document.querySelector('.upvotes-counter');
    console.log(votenum)
    --votenum;
  }
  decrementDownvotes() {
    let votenum = document.querySelector('.downvotes-counter');
    console.log(votenum)
    --votenum;
  }
}