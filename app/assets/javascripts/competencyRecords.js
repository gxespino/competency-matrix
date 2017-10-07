function updateCompetencyRecord(target) {
  var userId          = target.getAttribute('data-user-id')
  var competencyName  = target.getAttribute('data-competency-name')
  var competencyIndex = target.getAttribute('data-competency-index')
  var competencyState = target.classList[1]

  $.ajax({
    url: '/competency_records',
    type: 'PUT',
    data: {
      userId:          userId,
      competencyName:  competencyName,
      competencyIndex: competencyIndex,
      competencyState: competencyState
    }
  })
}

var loadProgressBars = function() {
  var completed = document.getElementsByClassName('completed');

  for (var i = 0, len = completed.length; i < len; i++) {
    var competency = completed[i]
    setProgressBar(competency)
  }

  var working = document.getElementsByClassName('working');

  for (var i = 0, len = working.length; i < len; i++) {
    var competency = working[i]
    setProgressBar(competency)
  }
}

$(document).ready(loadProgressBars);
$(document).on('page:load', loadProgressBars);
