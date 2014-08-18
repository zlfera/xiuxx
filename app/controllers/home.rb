Myapp::App.controllers :home do
  disable :layout
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
    etag 'hello'
    render 'index'
  end

  get :indexs, '/indexs' do
    #etag 'zeng'
    render 'indexs'
  end
end
