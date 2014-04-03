require 'spec_helper'

describe Tag do
  it { should validate_presence_of :name }
  it { should validate_presence_of :recipe_id }
  it { should belong_to :recipe }
end
