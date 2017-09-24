class Matrix
  BASE_HEADERS = ['Apprentice', 'Competent', 'Advanced', 'Expert'].freeze

  attr_accessor :title, :headers, :competencies

  def initialize(title: '', headers: BASE_HEADERS, competencies: [])
    @title = title
    @headers = headers
    @competencies = competencies
  end
end
