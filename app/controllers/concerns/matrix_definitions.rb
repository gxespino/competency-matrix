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

  def react_matrix
    Matrix.new(
      title: 'React',
      competencies: [overall]
    )
  end

  def devops_matrix
    Matrix.new(
      title: 'DevOps',
      competencies: [overall]
    )
  end

  private

  def overall
    Competency.new(
      title: 'Overall',
      levels: [apprentice, competent, proficient, advanced]
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
        <dd>Displays enthusiasm and a willingness to learn. Embraces an "I don't know" approach and actively seeks help when stuck. Communicates problems well both verbally and in writing. Has identified a tangible plan of action to improve.</dd>
      </dl>
    HTML
  end

  def competent
    <<~HTML
      <dl>
        <dt>Testing</dt>
        <dd>Proactively writes automated tests with an emphasis on good unit tests for the code they are writing.</dd>
        <dt>OOP/Functional paradigms</dt>
        <dd>Aware of object oriented programming and functional programming paradigms but identifying when and how they should be used doesn't come naturally, yet.</dd>
        <dt>Summary</dt>
        <dd>Can take a mid sized story and take the lead in it's completion. The end result is a working feature with some test coverage. A competent developer may not have considered future maintainability/extensibility.</dd>
      </dl>
    HTML
  end

  def proficient
    <<~HTML
      <dl>
        <dt>Error/Exception Handling</dt>
        <dd>Knows what type of test to write per scenario (acceptance vs integration vs unit) and consistently writes coverage for nil/null and error scenarios. Anticipates potential bugs and instinctively writes code to prevent them.</dd>
        <dt>Maintainability/Extensibility</dt>
        <dd>Can break down complex features and identify patterns and/or refactorings for improved maintainability and extensibility. Understands when abstractions are important and weighs options for when best to implement them.</dd>
        <dt>Summary</dt>
        <dd>Is fully competent but with the added ability to holisitically assess a system and apply "the right stuff, at the right time." A proficient developer doesn't rely on dogma and can find the best tool for the job or break the right rules towards eventual success. Prioritizes well.</dd>
      </dl>
    HTML
  end

  def advanced
    <<~HTML
      <dl>
        <dt>Mentoring/Team Focused</dt>
        <dd>Proactively seeks opportunities to increase the competency of the team as a whole. Supports junior members and devises ways for them to succeed and grow.</dd>
        <dt>Systems Decomposition</dt>
        <dd>Has implemented multiple big features in the codebase and can easily visualize the system as a whole and how changes affect each part of the system.</dd>
        <dt>Summary</dt>
        <dd>Force multiplier who consistently uplifts other team members. Drives systems architecture decisions and can lead a project from concept through release.</dd>
      </dl>
    HTML
  end
end
