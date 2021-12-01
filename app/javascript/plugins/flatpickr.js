import flatpickr from "flatpickr";

function formatDate() {
  var d = new Date(),
    month = '' + (d.getMonth() + 1),
    day = '' + d.getDate(),
    year = d.getFullYear();

  if (month.length < 2)
    month = '0' + month;
  if (day.length < 2)
    day = '0' + day;

  return [year, month, day].join('-');
}

const initFlatpickr = () => {
  let inputs = document.querySelectorAll(".datepicker")
  let disabled_dates = JSON.parse(inputs[0].dataset.disabledDateStart).map((input, i) => {
    return {
      from: JSON.parse(inputs[0].dataset.disabledDateStart)[i],
      to: JSON.parse(inputs[0].dataset.disabledDateEnd)[i]
    }
  })
  console.log(disabled_dates)
  flatpickr(".datepicker", {
      dateFormat: "Y-m-d",
      disable: disabled_dates,
      minDate: "today"

    });
}


export { initFlatpickr };
