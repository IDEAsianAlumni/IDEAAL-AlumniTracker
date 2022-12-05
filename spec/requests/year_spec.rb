require 'rails_helper'

RSpec.describe "Years", type: :request do
  describe "GET /2022" do
    it "returns http success" do
      get "/year/2022"
      expect(response).to have_http_status(:success)
    end
  end

  describe "GET /2023" do
    it "returns http success" do
      get "/year/2023"
      expect(response).to have_http_status(:success)
    end
  end

  describe "GET /2024" do
    it "returns http success" do
      get "/year/2024"
      expect(response).to have_http_status(:success)
    end
  end

  describe "GET /2025" do
    it "returns http success" do
      get "/year/2025"
      expect(response).to have_http_status(:success)
    end
  end

  describe "GET /2026" do
    it "returns http success" do
      get "/year/2026"
      expect(response).to have_http_status(:success)
    end
  end

  describe "GET /2027" do
    it "returns http success" do
      get "/year/2027"
      expect(response).to have_http_status(:success)
    end
  end

  describe "GET /2028" do
    it "returns http success" do
      get "/year/2028"
      expect(response).to have_http_status(:success)
    end
  end

  describe "GET /2029" do
    it "returns http success" do
      get "/year/2029"
      expect(response).to have_http_status(:success)
    end
  end

  describe "GET /2030" do
    it "returns http success" do
      get "/year/2030"
      expect(response).to have_http_status(:success)
    end
  end

end
