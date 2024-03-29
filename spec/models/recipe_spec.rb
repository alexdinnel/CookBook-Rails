require 'spec_helper'

describe Recipe do
  it { should validate_presence_of :name }
  it { should validate_presence_of :ingredients }
  it { should validate_presence_of :recipe }
  it { should validate_presence_of :stars }
  it { should have_many :tags }
end
