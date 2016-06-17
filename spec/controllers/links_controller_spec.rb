require 'rails_helper'

describe LinksController do
    
  describe "GET #index" do
    it "populates an array of links" do
      link = FactoryGirl.create(:link)
      get :index
      assigns(:links).should eq([link])
    end
    
    it "renders the :index view" do
      get :index
      response.should render_template :index
    end
  end
  
  describe "GET #show" do
    it "assigns the requested link to @link" do
      link = FactoryGirl.create(:link)
      get :show, id: link
      assigns(:link).should eq(link)
    end
  
    it "renders the #show view" do
      get :show, id: FactoryGirl.create(:link)
      response.should render_template :show
    end
  end
  
  describe "POST create" do
    context "with valid attributes" do
      it "creates a new link" do
        expect{
          post :create, link: FactoryGirl.attributes_for(:link)
        }.to change(Link,:count).by(1)
      end
    
      it "redirects to the new link" do
        post :create, link: FactoryGirl.attributes_for(:link)
        response.should redirect_to Link.last
      end
     end
  
    context "with invalid attributes" do
      it "does not save the new link" do
        expect{
          post :create, link: FactoryGirl.attributes_for(:link, outgoing_url: nil)
        }.to_not change(Link,:count)
      end
    
      it "re-renders the new method" do
        post :create, link: FactoryGirl.attributes_for(:link, outgoing_url: nil)
        response.should render_template :new
      end
    end 
 end
  
end