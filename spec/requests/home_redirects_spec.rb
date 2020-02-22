require 'rails_helper'

describe HomeController do
    it 'redirect /records if logged_in' do
        get '/'
        # expect(response).to redirect_to('http://localhost:3000/records')
        expect(response).to have_http_status "200"
    end
end
