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

  def destroy
  @post = Post.find(params[:id]) # Silinecek yazıyı kimliğinden bul
  @post.destroy                  # Veritabanından sil
  redirect_to "/"                # Ana sayfaya geri dön
  end

  def show
  @post = Post.find(params[:id]) # Sadece o ID'li yazıyı bul
  end
end