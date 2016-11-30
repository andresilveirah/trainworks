require 'spec_helper'

describe Trainworks::Railroad do
  let(:file_parser)     { double }
  let(:graph_builder)   { double }
  let(:graph_algorithm) { double }
  let(:railroad) do
    Trainworks::Railroad.new(
      'file_name',
      file_parser: file_parser,
      graph_builder: graph_builder,
      graph_algorithm: graph_algorithm
    )
  end

  describe 'calling #distance("A-B-C")' do
    it 'calls distance on its graph_algorithm passing an array as argument' do
      expect(graph_algorithm).to receive(:distance).once.with(['A', 'B', 'C'])
      railroad.distance('A-B-C')
    end
  end
end
