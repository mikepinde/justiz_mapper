require 'spec_helper'

# This spec was generated by rspec-rails when you ran the scaffold generator.
# It demonstrates how one might use RSpec to specify the controller code that
# was generated by Rails when you ran the scaffold generator.
#
# It assumes that the implementation code is generated by the rails scaffold
# generator.  If you are using any extension libraries to generate different
# controller code, this generated spec may or may not pass.
#
# It only uses APIs available in rails and/or rspec-rails.  There are a number
# of tools you can use to make these specs even more expressive, but we're
# sticking to rails and rspec-rails APIs to keep things simple and stable.
#
# Compared to earlier versions of this generator, there is very limited use of
# stubs and message expectations in this spec.  Stubs are only used when there
# is no simpler way to get a handle on the object needed for the example.
# Message expectations are only used when there is no simpler way to specify
# that an instance is receiving a specific message.

describe CourtsController do

  # This should return the minimal set of attributes required to create a valid
  # Court. As you add validations to Court, be sure to
  # adjust the attributes here as well.
  let(:valid_attributes) { { "category" => "MyString" } }

  # This should return the minimal set of values that should be in the session
  # in order to pass any filters (e.g. authentication) defined in
  # CourtsController. Be sure to keep this updated too.
  let(:valid_session) { {} }

  describe "GET index" do
    it "assigns all courts as @courts" do
      court = Court.create! valid_attributes
      get :index, {}, valid_session
      assigns(:courts).should eq([court])
    end
  end

  describe "GET show" do
    it "assigns the requested court as @court" do
      court = Court.create! valid_attributes
      get :show, {:id => court.to_param}, valid_session
      assigns(:court).should eq(court)
    end
  end

  describe "GET new" do
    it "assigns a new court as @court" do
      get :new, {}, valid_session
      assigns(:court).should be_a_new(Court)
    end
  end

  describe "GET edit" do
    it "assigns the requested court as @court" do
      court = Court.create! valid_attributes
      get :edit, {:id => court.to_param}, valid_session
      assigns(:court).should eq(court)
    end
  end

  describe "POST create" do
    describe "with valid params" do
      it "creates a new Court" do
        expect {
          post :create, {:court => valid_attributes}, valid_session
        }.to change(Court, :count).by(1)
      end

      it "assigns a newly created court as @court" do
        post :create, {:court => valid_attributes}, valid_session
        assigns(:court).should be_a(Court)
        assigns(:court).should be_persisted
      end

      it "redirects to the created court" do
        post :create, {:court => valid_attributes}, valid_session
        response.should redirect_to(Court.last)
      end
    end

    describe "with invalid params" do
      it "assigns a newly created but unsaved court as @court" do
        # Trigger the behavior that occurs when invalid params are submitted
        Court.any_instance.stub(:save).and_return(false)
        post :create, {:court => { "category" => "invalid value" }}, valid_session
        assigns(:court).should be_a_new(Court)
      end

      it "re-renders the 'new' template" do
        # Trigger the behavior that occurs when invalid params are submitted
        Court.any_instance.stub(:save).and_return(false)
        post :create, {:court => { "category" => "invalid value" }}, valid_session
        response.should render_template("new")
      end
    end
  end

  describe "PUT update" do
    describe "with valid params" do
      it "updates the requested court" do
        court = Court.create! valid_attributes
        # Assuming there are no other courts in the database, this
        # specifies that the Court created on the previous line
        # receives the :update_attributes message with whatever params are
        # submitted in the request.
        Court.any_instance.should_receive(:update_attributes).with({ "category" => "MyString" })
        put :update, {:id => court.to_param, :court => { "category" => "MyString" }}, valid_session
      end

      it "assigns the requested court as @court" do
        court = Court.create! valid_attributes
        put :update, {:id => court.to_param, :court => valid_attributes}, valid_session
        assigns(:court).should eq(court)
      end

      it "redirects to the court" do
        court = Court.create! valid_attributes
        put :update, {:id => court.to_param, :court => valid_attributes}, valid_session
        response.should redirect_to(court)
      end
    end

    describe "with invalid params" do
      it "assigns the court as @court" do
        court = Court.create! valid_attributes
        # Trigger the behavior that occurs when invalid params are submitted
        Court.any_instance.stub(:save).and_return(false)
        put :update, {:id => court.to_param, :court => { "category" => "invalid value" }}, valid_session
        assigns(:court).should eq(court)
      end

      it "re-renders the 'edit' template" do
        court = Court.create! valid_attributes
        # Trigger the behavior that occurs when invalid params are submitted
        Court.any_instance.stub(:save).and_return(false)
        put :update, {:id => court.to_param, :court => { "category" => "invalid value" }}, valid_session
        response.should render_template("edit")
      end
    end
  end

  describe "DELETE destroy" do
    it "destroys the requested court" do
      court = Court.create! valid_attributes
      expect {
        delete :destroy, {:id => court.to_param}, valid_session
      }.to change(Court, :count).by(-1)
    end

    it "redirects to the courts list" do
      court = Court.create! valid_attributes
      delete :destroy, {:id => court.to_param}, valid_session
      response.should redirect_to(courts_url)
    end
  end

end
