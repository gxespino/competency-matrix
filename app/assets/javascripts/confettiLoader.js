function ConfettiLoader(tab) {
  this.tabValue             = tab.attributes['aria-controls'].value
  this.progressBarId        = this.tabValue + '-progress-bar'
  this.progressBar          = document.getElementById(this.progressBarId)
  this.confettiElements     = document.getElementsByClassName('confetti-piece')
  this.completedProgressBar = this.progressBar.attributes['aria-valuenow'].value === '100'

  this.load = function() {
    this.completedProgressBar
      ? this.triggerConfetti(this.confettiElements, 'block')
      : this.triggerConfetti(this.confettiElements, 'none')
  }

  this.triggerConfetti = function(confettiElements, displaySetting) {
    Array.prototype.forEach.call(confettiElements, function (el) {
      el.style.display = displaySetting
    });
  }
}
