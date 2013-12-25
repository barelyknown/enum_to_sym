require "spec_helper"

module EnumToSym
  describe Symbolize do

    subject do
      Foo.new
    end

    it "returns its enum attribute as symbol" do
      expect(subject.status).to be_a_kind_of Symbol
    end

    it "is?(:symbolized)" do
      expect(subject.is?(:symbolized)).to be_true
    end

    it "isn't is?(:not_symbolized)" do
      expect(subject.is?(:not_symbolized)).to_not be_true
    end

  end
end