require_relative '../../../spec_helper'

describe Web::Views::EntrantRating::Create do
  let(:exposures) { Hash[foo: 'bar'] }
  let(:template)  { Hanami::View::Template.new('apps/web/templates/entrant_rating/create.html.slim') }
  let(:view)      { Web::Views::EntrantRating::Create.new(template, exposures) }
  let(:rendered)  { view.render }

  it 'exposes #foo' do
    skip 'This is an auto-generated test. Edit it and add your own tests.'

    # Example
    view.foo.must_equal exposures.fetch(:foo)
  end
end
