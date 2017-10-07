class DbMapper
  attr_reader :matrices, :competency_record

  def initialize(matrices:, competency_record:)
    @matrices = matrices
    @competency_record = competency_record
  end

  def mapped_competency_record
    matrices.each do |matrix|
      matrix.competencies.each do |competency|
        competency.levels.each_with_index do |level, index|
          level[1] = competency_record[matrix.title][index]
        end
      end
    end
  end
end
