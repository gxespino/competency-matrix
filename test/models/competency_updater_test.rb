require 'test_helper'

describe CompetencyUpdater do
  describe '#initialize' do
    it 'exists' do
      result = CompetencyUpdater.new(name: '', index: '', state: '')
      assert_instance_of CompetencyUpdater, result
    end
  end

  describe '#update_array' do
    it 'updates the competency array accordingly' do
      name ='Javascript'
      index = '1'
      state = 'working'
      result_array = { 'Javascript' => ['completed','working','',''] }

      result = CompetencyUpdater.new(name: name, index: index, state: state).updated_comp

      assert_equal result_array, result
    end
  end
end
