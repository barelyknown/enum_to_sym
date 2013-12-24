require "spec_helper"

module EnumToSym
  describe Symbolize do

    subject do
      Foo.new
    end

    it "returns its enum attribute as symbol" do
      expect(subject.status).to be_a_kind_of Symbol
    end

  end
end