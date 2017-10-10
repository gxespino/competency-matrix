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
