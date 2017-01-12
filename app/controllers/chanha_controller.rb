class ChanhaController < ApplicationController
  def read
    @show=Twitter.all
     
  end

  def write
    p=Twitter.new
    p.author=params[:author_name]
    p.password=params[:password]
    p.content=params[:content]
    p.save
    redirect_to "/"
    
  
    
    
  end

  def edit
    @edit=Twitter.find(params[:id])
    if @edit.password!=params[:password]
      redirect_to "/chanha/read"
    end
  end
  
  def password_edit
    @password_edit=Twitter.find(params[:id])
  end

  def delete
    p=Twitter.find(params[:id])
    if p.password==params[:password]
      p.destroy
    end
    redirect_to "/chanha/read"
  end
  
  def password_delete
    @delete=Twitter.find(params[:id])
   
  end
  
  def update
    p=Twitter.find(params[:id])
    p.author=params[:author_name]
    p.password=params[:password]
    p.content=params[:content]
    p.save
    redirect_to "/chanha/read"
  end
end
