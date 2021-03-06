require "rails_helper"

RSpec.describe "Firebases", type: :request do
  describe "GET /new" do
    it "returns http success" do
      get "/firebase/new"
      expect(response).to have_http_status(:success)
    end
  end

  describe "GET /create" do
    it "returns http success" do
      get "/firebase/create"
      expect(response).to have_http_status(:success)
    end
  end

  describe "GET /destroy" do
    it "returns http success" do
      get "/firebase/destroy"
      expect(response).to have_http_status(:success)
    end
  end
end
