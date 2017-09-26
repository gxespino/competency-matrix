function checkCompletion(el) {
  var tab              = el.attributes['aria-controls'].value
  var progressBarId    = tab + '-progress-bar'
  var progressBar      = document.getElementById(progressBarId)
  var confettiElements = document.getElementsByClassName('confetti-piece')

  if (progressBar.attributes['aria-valuenow'].value === '100') {
    Array.prototype.forEach.call(confettiElements, function (el) {
      el.style.display='block'
    });
  } else {
    Array.prototype.forEach.call(confettiElements, function (el) {
      el.style.display='none'
    });
  }
}
