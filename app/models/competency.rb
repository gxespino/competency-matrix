class Competency
  attr_accessor :title, :levels

  def initialize(title: '', levels: [])
    @title = title
    @levels = levels
  end
end
