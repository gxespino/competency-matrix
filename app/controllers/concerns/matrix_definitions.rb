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
        <dt>Description list</dt>
        <dd>A description of the competency is what is needed here</dd>
        <dt>Object Oriented Programming</dt>
        <dd>This is what is required to know OOP</dd>
      </dl>
    HTML
  end

  def competent
    <<~HTML
      <dl>
        <dt>Description list</dt>
        <dd>A description of the competency is what is needed here</dd>
        <dt>Object Oriented Programming</dt>
        <dd>This is what is required to know OOP</dd>
      </dl>
    HTML
  end

  def advanced
    <<~HTML
      <dl>
        <dt>Description list</dt>
        <dd>A description of the competency is what is needed here</dd>
        <dt>Object Oriented Programming</dt>
        <dd>This is what is required to know OOP</dd>
      </dl>
    HTML
  end

  def expert
    <<~HTML
      <dl>
        <dt>Description list</dt>
        <dd>A description of the competency is what is needed here</dd>
        <dt>Object Oriented Programming</dt>
        <dd>This is what is required to know OOP</dd>
      </dl>
    HTML
  end
end
