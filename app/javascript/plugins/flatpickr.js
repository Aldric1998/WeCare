import flatpickr from "flatpickr";

const initFlatpickr = () => {
  flatpickr(".datepicker", {
    enableTime: true,

    // disable: [
    //     {
    //         from: "2020-04-01",
    //         to: date.setDate(date.getDate() - 1)
    //     },

    // ]
  });
}


export { initFlatpickr };
