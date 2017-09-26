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

  setProgressBar(competency)
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

function setProgressBar(competency) {
  var parentDiv   = competency.closest('div')
  var progressBar = null

  // Find closest progress-bar div
  for (var i = 0; i < parentDiv.childNodes.length; i++) {
    var node = parentDiv.childNodes[i]

    if (node && node.classList) {
      if (node.classList.contains('progress-div')) {
        // TODO: This is bad!
        progressBar = parentDiv.childNodes[i].childNodes[1].childNodes[1]
        break;
      }
    }
  }

  var parentRowCells = competency.parentElement.cells
  var cellsArray     = []

  // Convert parentRowCells object to Array
  for (var i = 0, len = parentRowCells.length; i < len; i++) {
    cellsArray.push(parentRowCells[i])
  }

  for (var i = 0, len = cellsArray.length; i < len; i++) {
    var competencyIndex   = cellsArray.indexOf(competency) + 1
    var workingCompetency = competency.classList.contains('working')
    var newValue          = (competencyIndex * 25)

    if (workingCompetency) newValue = newValue - 12.5

    updateProgressBarValues(progressBar, newValue);
  }
}

function updateProgressBarValues(progressBar, value) {
  progressBar.setAttribute('style', 'width: ' + value + '%')
  progressBar.setAttribute('aria-valuenow', value)
  progressBar.innerText = value + '%'

  var confettiElements = document.getElementsByClassName('confetti-piece')

  if (value === 100) {
    Array.prototype.forEach.call(confettiElements, function (el) {
      el.style.display='block'
    });
  } else {
    Array.prototype.forEach.call(confettiElements, function (el) {
      el.style.display='none'
    });
  }
}

function select(element, tdClass) {
  element.classList.add(tdClass)
}

function unselect(element, tdClass) {
  element.classList.remove(tdClass)
}

document.addEventListener("DOMContentLoaded", function(){
  // Allow dl, dt, dd & competency-text classes to be clickable
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

function loadCompetencies(recordId) {
  // Load competencies
  var dataDiv  = document.getElementById('matrix-content')
  var matrices = JSON.parse(dataDiv.attributes['data-matrices'].value)

  // [js, ruby, java, react, devops]
  $.ajax({
    type: "PUT",
    url: "/records/" + recordId,
    data: {
      record: {
        data: 'WTF!!!!'
      }
    },
    success: function(data) {
      console.log(data)
      console.log('GOT HERE')
    }
  })
}
