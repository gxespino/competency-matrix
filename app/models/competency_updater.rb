class CompetencyUpdater
  def initialize(name:, index:, state:)
    @name = name
    @index = index.to_i
    @state = state
  end

  def updated_comp
    new_array = case index
                when 0
                  [state, '', '', '']
                when 1
                  ['completed', state, '', '']
                when 2
                  ['completed', 'completed', state, '']
                when 3
                  ['completed', 'completed', 'completed', state]
                end

    { name => new_array }
  end

  private

  attr_reader :name, :index, :state
end
