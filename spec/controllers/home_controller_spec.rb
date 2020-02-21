require 'rails_helper'

RSpec.describe HomeController, type: :controller do
    describe "#top" do
        it "responds successfully" do
            get 'top'
            expect(response).to be_success
        end
        it "returns a 200 response" do
            get 'top'
            expect(response).to have_http_status "200"
        end
    end
end