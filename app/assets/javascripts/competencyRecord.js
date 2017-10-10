function CompetencyRecord(competency) {
  this.userId = competency.getAttribute('data-user-id')
  this.name   = competency.getAttribute('data-competency-name')
  this.index  = competency.getAttribute('data-competency-index')
  this.state  = competency.classList[1]

  this.update = function() {
    $.ajax({
      url: '/competency_records',
      type: 'PUT',
      data: {
        userId:          this.userId,
        competencyName:  this.competencyName,
        competencyIndex: this.competencyIndex,
        competencyState: this.competencyState
      }
    })
  }
}
