Myapp::App.controllers :weixinapi do
  # disable :layout
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
  
  TOKEN = 'igougougou'
  before do
    require 'digest/sha1'
    timestamp, nonce = params[:timestamp].to_s, params[:nonce].to_s
    codes = [TOKEN, timestamp, nonce].sort.join
    status 200 unless Digest::SHA1.hexdigest(codes) == params[:signature]
  end
  ################################

  post '/weixin' do
    params[:echostr]
  end

  get '/weixin' do
    #content_type :xml, charset: 'utf-8'

    root = Nokogiri::XML(request.body.read).root
    @message_type = root.css('MsgType').children.text

    @receiver = root.css("ToUserName").children.text
    @sender = root.css("FromUserName").children.text
    @send_time = Time.at(root.css("CreateTime").text.to_i)
    @content = root.css("Content").children.text
    @message_id = root.css("MsgId").text.to_i
    ###
    # @pic_url = root.css('PicUrl').children.text
    render 'home/indexs' #("#{@message_type.to_s}")

  end

end
