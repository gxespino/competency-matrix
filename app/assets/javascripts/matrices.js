function selectCompetency(event) {
  var competency = event.target

  if (competency.classList.contains('completed')) {
    clearParentRow(competency)
    unselect(competency, 'completed')
    select(competency, 'working')
    setParentRow(competency)
  } else if (competency.classList.contains('working')) {
    unselect(competency, 'working')
    select(competency, 'completed')
    setParentRow(competency)
  } else {
    unselect(competency, 'completed')
    select(competency, 'working')
    setParentRow(competency)
  }
}

function clearParentRow(competency) {
  var parentRowCells = competency.parentElement.cells

  for (var i = 0, len = parentRowCells.length; i < len; i++) {
    unselect(parentRowCells[i], 'working');
    unselect(parentRowCells[i], 'completed');
  }
}

function setParentRow(competency) {
  var parentRowCells = competency.parentElement.cells
  var cellsArray = []

  // Convert parentRowCells object to Array
  for (var i = 0, len = parentRowCells.length; i < len; i++) {
    cellsArray.push(parentRowCells[i])
  }

  for (var i = 0, len = cellsArray.length; i < len; i++) {
    var competencyIndex = cellsArray.indexOf(competency)

    // Don't set styles for clicked competency
    if (i === competencyIndex) {
      return
    }

    // For cells with index less than competency - set to completed
    if (i < competencyIndex) {
      unselect(cellsArray[i], 'working');
      select(cellsArray[i], 'completed');
    }

    // For cells with index greater than competency - clear styles
    if (i > competencyIndex) {
      unselect(cellsArray[i], 'working');
      unselect(cellsArray[i], 'completed');
    }
  }
}

function select(element, tdClass) {
  element.classList.add(tdClass)
}

function unselect(element, tdClass) {
  element.classList.remove(tdClass)
}

// Allow dl, dt, dd & competency-text classes to be clickable
document.addEventListener("DOMContentLoaded", function(){
  [].forEach.call(document.querySelectorAll('dl', 'dt', 'dd', 'competency-text'), function(el) {
    el.addEventListener('click', function(event) {
      event.stopPropagation()
      var competency = event.target.parentNode.parentNode
      var event = new MouseEvent('click', {
        bubbles: true,
        cancelable: false
      })

      competency.dispatchEvent(event)
    })
  })
})
