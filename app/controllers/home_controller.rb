class HomeController < ActionController::Base
  def index
    @posts = Post.all
  end

  # Form sayfasını açar
  def new
  end

  # Formdan gelen veriyi veritabanına kaydeder
  def create
    Post.create(title: params[:title], body: params[:body], author: params[:author])
    redirect_to "/" # Kayıttan sonra ana sayfaya dön
  end
end