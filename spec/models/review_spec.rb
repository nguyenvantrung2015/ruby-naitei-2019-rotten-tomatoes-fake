require "rails_helper"

RSpec.describe Review, type: :model do
  before(:each) do
    @movie = create :movie
  end

  it "is valid with valid attributes" do
    review = build :review, medium: @movie.medium
    expect(review).to be_valid
  end

  it "is not valid without content" do
    review = build :review, medium: @movie.medium, content: nil
    expect(review).to_not be_valid
  end

  it "is not valid without score" do
    review = build :review, medium: @movie.medium, score: nil
    expect(review).to_not be_valid
  end

  it "is not valid with score outside (1..10)" do
    review = build :review, medium: @movie.medium, score: 11
    expect(review).to_not be_valid
  end

  it "is not valid if user already reviewed" do
    review = create :review, medium: @movie.medium
    expect(review).to_not be_valid
  end
end
