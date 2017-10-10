var completedComps = document.getElementsByClassName('completed');
var workingComps   = document.getElementsByClassName('working');

function ProgressBarLoader() {
  this.load = function(competenciesToLoad) {
    for (var i = 0, len = competenciesToLoad.length; i < len; i++) {
      var competency = competenciesToLoad[i]
      setProgressBar(competency)
    }
  }
}
