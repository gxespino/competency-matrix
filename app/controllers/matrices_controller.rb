class MatricesController < ApplicationController
  before_action :authenticate_user!

  def new
    @matrices = [javascript_matrix]
  end

  private

  def javascript_matrix
    es6 = Competency.new(
      title: 'ES6',
      levels: [
        'Can write es6 (let/const, arrow functions, class, etc.), can set up a .babelrc',
        'Control-flow: generators, async/await, knows how `class` transpiles to ES5 and when to use it vs functions, know popular .babelrc configs and when to use babel-register babel-node and babel-polyfill, aware of browser/node compatability, knowledge of upcoming features',
        'Contributes to babel or a babel plugin, contributes to discussions on the future of ES6',
        'Authored and wrote Javascript'
      ]
    )

    quirks = Competency.new(
      title: 'Language Quirks',
      levels: [
        'Can write es6 (let/const, arrow functions, class, etc.), can set up a .babelrc',
        'Control-flow: generators, async/await, knows how `class` transpiles to ES5 and when to use it vs functions, know popular .babelrc configs and when to use babel-register babel-node and babel-polyfill, aware of browser/node compatability, knowledge of upcoming features',
        'Contributes to babel or a babel plugin, contributes to discussions on the future of ES6',
        'Authored and wrote Javascript'
      ]
    )

    performance = Competency.new(
      title: 'Performance',
      levels: [
        'Can write es6 (let/const, arrow functions, class, etc.), can set up a .babelrc',
        'Control-flow: generators, async/await, knows how `class` transpiles to ES5 and when to use it vs functions, know popular .babelrc configs and when to use babel-register babel-node and babel-polyfill, aware of browser/node compatability, knowledge of upcoming features',
        'Contributes to babel or a babel plugin, contributes to discussions on the future of ES6',
        'Authored and wrote Javascript'
      ]
    )

    tools = Competency.new(
      title: 'Tools',
      levels: [
        'Can write es6 (let/const, arrow functions, class, etc.), can set up a .babelrc',
        'Control-flow: generators, async/await, knows how `class` transpiles to ES5 and when to use it vs functions, know popular .babelrc configs and when to use babel-register babel-node and babel-polyfill, aware of browser/node compatability, knowledge of upcoming features',
        'Contributes to babel or a babel plugin, contributes to discussions on the future of ES6',
        'Authored and wrote Javascript'
      ]
    )

    Matrix.new(
      title: 'Javascript',
      headers: [
        '',
        'Beginner',
        'Competent',
        'Senior',
        'Expert'
      ],
      competencies: [es6, quirks, performance, tools]
    )
  end
end
