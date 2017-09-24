module MatrixDefinitions
  def javascript_matrix
    Matrix.new(
      title: 'Javascript',
      competencies: [overall]
    )
  end

  def ruby_matrix
    Matrix.new(
      title: 'Ruby',
      competencies: [overall]
    )
  end

  def java_matrix
    Matrix.new(
      title: 'Java',
      competencies: [overall]
    )
  end

  def css_matrix
    Matrix.new(
      title: 'CSS',
      competencies: [overall]
    )
  end

  def react_matrix
    Matrix.new(
      title: 'React',
      competencies: [overall]
    )
  end

  private

  def overall
    Competency.new(
      title: 'Overall',
      levels: [apprentice, competent, advanced, expert]
    )
  end

  def apprentice
    <<~HTML
      <dl>
        <dt>Syntax</dt>
        <dd>Knows how to write the basic elements of the language like loops, classes, conditional statements, modules etc.</dd>
        <dt>Problem Decomposition</dt>
        <dd>Can break down basic bugs and identify steps/resources needed to fix them</dd>
        <dt>Summary</dt>
        <dd>Displays enthusiasm and a willingness to learn. Embraces an "I don't know" approach and actively seeks help when stuck. Communicates problems well both verbally and in writing. Has identified a tangible plan to improve.</dd>
      </dl>
    HTML
  end

  def competent
    <<~HTML
      <dl>
        <dt>Testing</dt>
        <dd>Proactively writes automated tests and identifies good unit tests for the code they are writing.</dd>
        <dt>OOP/Functional paradigms</dt>
        <dd>Aware of object oriented programming and functional programming paradigms but identifying when and how they should be used doesn't come naturally, yet.</dd>
        <dt>Summary</dt>
        <dd>Can take a mid sized story and take the lead in it's completion. The end result is a working feature with some test coverage. A competent developer may not have considered future maintainability/extensibility.</dd>
      </dl>
    HTML
  end

  def advanced
    <<~HTML
      <dl>
        <dt>Testing</dt>
        <dd>Knows what type of test to write per scenario (acceptance vs integration vs unit) and consistently writes coverage for error scenarios.</dd>
        <dt>Design Patterns</dt>
        <dd></dd>
        <dt>Summary</dt>
        <dd></dd>
      </dl>
    HTML
  end

  def expert
    <<~HTML
      <dl>
        <dt>Testing</dt>
        <dd>Knows what type of test to write per scenario (acceptance vs integration vs unit) and consistently writes coverage for error scenarios.</dd>
        <dt>Design Patterns</dt>
        <dd></dd>
        <dt>Summary</dt>
        <dd></dd>
      </dl>
    HTML
  end
end
