class Matrix
  BASE_HEADERS = ['Beginner', 'Competent', 'Senior', 'Expert'].freeze

  attr_accessor :title, :headers, :competencies

  def initialize(title: '', headers: BASE_HEADERS, competencies: [])
    @title = title
    @headers = headers
    @competencies = competencies
  end
end
