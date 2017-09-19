function selectCompetency(event) {
  var competency = event.target

  clearParentRow(competency)
  select(competency)
}

function clearParentRow(competency) {
  var parentRowCells = competency.parentElement.cells

  for (var i = 0, len = parentRowCells.length; i < len; i++) {
    unselect(parentRowCells[i]);
  }
}

function select(element) {
  element.classList.add('selected')
}

function unselect(element) {
  element.classList.remove('selected')
}
