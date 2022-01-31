require 'rails_helper'

# Change this ArticlesController to your project
RSpec.describe ArticlesController, type: :controller do

    # This should return the minimal set of attributes required to create a valid
    # Article. As you add validations to Article, be sure to adjust the attributes here as well.
    let(:valid_attributes) {
        { :title => "Test title!" }
    }

    let(:valid_session) { {} }

    describe "GET #index" do
        #login_user
        it "returns a success response" do
            
            Article.create! valid_attributes

            
    
            get :index, params: {}, session: valid_session
            #expect(response).to be_successful # be_successful expects a HTTP Status code of 200
             #expect(response).to have_http_status(200)
             #expect(response.status).to eq(302) # Expects a HTTP Status code of 302
             
              expect(response).to render_template("articles/index")
        end
    end
end