class Matrix
  attr_accessor :title, :headers, :competencies

  def initialize(title: '', headers: [], competencies: [])
    @title = title
    @headers = headers
    @competencies = competencies
  end
end
