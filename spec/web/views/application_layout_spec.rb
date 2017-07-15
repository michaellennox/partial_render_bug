require 'spec_helper'

describe Web::Views::ApplicationLayout do
  let(:exposures) { Hash[] }
  let(:template)  { Hanami::View::Template.new('apps/web/templates/application.html.erb') }
  let(:view)      { Web::Views::ApplicationLayout.new(template, exposures) }
  let(:rendered)  { view.render }

  it 'displays that things are there' do
    rendered.must_include '<p>Many Things are Here</p>'
  end
end
