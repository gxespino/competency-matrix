require 'test_helper'

describe DbMapper do
  include MatrixDefinitions

  describe '#initialize' do
    it 'takes and Array of Matrices and a CompetencyRecord' do
      matrices = {}
      competency_record = {}

      result = DbMapper.new(
        matrices: matrices,
        competency_record: competency_record
      )

      assert_instance_of DbMapper, result
    end
  end

  describe '#map_user_competency_record!' do
    it 'returns an updated matrices array' do
      matrices = [
        javascript_matrix,
        ruby_matrix
      ]
      competency_record = {
        "Javascript" => ['completed', 'completed', 'working', ''],
        "Ruby"       => ['working', '', '', '']
      }
      mapper = DbMapper.new(
        matrices: matrices,
        competency_record: competency_record
      )

      mapper.map_user_competency_record!

      result = mapper.mapped_matrices

      assert_equal 'completed', result.first.competencies.first.levels.first[1]
      assert_equal 'completed', result.first.competencies.first.levels[1][1]
      assert_equal 'working',   result.last.competencies.first.levels.first[1]
      assert_equal '',          result.last.competencies.first.levels[1][1]
    end
  end
end
