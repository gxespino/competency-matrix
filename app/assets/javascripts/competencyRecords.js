function updateCompetencyRecord(target) {
  // $.ajax({
  //   url: '/competency_records',
  //   type: 'POST',
  //   data: { id: e.target.id, checked: e.target.checked }
  // })

  var userId             = target.getAttribute('data-user-id')
  var competencyPosition = target.getAttribute('data-competency-position')
  var competencyState    = target.classList[1]

  console.log("userId:", userId)
  console.log("position:", competencyPosition)
  console.log("state:", competencyState)
}

var addOnClicks = function() {
  var checkboxes = document.getElementsByClassName('cbx');

  $.each(checkboxes, function(idx, checkbox) {
    checkbox.onclick = triggerCheck
  })
}

$(document).ready(addOnClicks);
$(document).on('page:load', addOnClicks);
