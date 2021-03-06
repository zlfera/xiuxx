Myapp::App.controllers :home do
  #expires 86400
  # get :index, :map => '/foo/bar' do
  #   session[:foo] = 'bar'
  #   render 'index'
  # end

  # get :sample, :map => '/sample/url', :provides => [:any, :js] do
  #   case content_type
  #     when :js then ...
  #     else ...
  # end

  # get :foo, :with => :id do
  #   'Maps to url '/foo/#{params[:id]}''
  # end

  # get '/example' do
  #   'Hello world!'
  # end
  
  get :index, '/' do
    #"Hello, Phusion Passenger #{PhusionPassenger::VERSION_STRING}!"
    expires 28800
    etag Time.new.day
    render 'index'
  end

  get :indexs, '/indexs', cache: true do
    expires 28800
    etag Time.new.day
    render 'indexs'
  end
end
