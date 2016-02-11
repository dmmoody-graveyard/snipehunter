require 'rails_helper'

describe PostsController do
  describe "GET index" do
    it "success" do
      expect(response).to be_success
    end
  end

  describe "GET show" do 
    it "success" do 
      expect(response).to be_success
    end
  end
end
