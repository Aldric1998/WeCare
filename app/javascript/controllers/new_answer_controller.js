// import { Controller } from "stimulus";
// import { csrfToken } from "@rails/ujs";

// export default class extends Controller {
//   static targets = ['question'];

//   send(event) {
//     console.log(this.questionTarget);
//       console.log('TODO: send request in AJAX');
//     fetch("https://opentdb.com/api.php?amount=10")
//       .then(response => response.json())
//       .then((data) => {
//         console.log(data)
//       });
//   }

//   sumbit(event) {
//     fetch(this.questionTarget.action, {
//       method: 'POST',
//       headers: { 'Accept': "application/json", 'X-CSRF-Token': csrfToken() },
//       body: new FormData(this.questionTarget)
//     })
//     .then(response => response.json())
//     .then((data) => {
//       console.log(data)
//     });
//   }
// }
