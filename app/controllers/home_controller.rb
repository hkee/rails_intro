class HomeController < ApplicationController
  #하나의 액션
  def lotto
    @lotto = (1..45).to_a.sample(6)
  end

  def index
  end

  def welcome
    @name = params[:name]
  end

def google
end

def game
end
def gameresult
#크롤링 로직
require 'httparty'
require 'nokogiri'
url='https://pubg.op.gg/user/'+params[:username]
doc = HTTParty.get(url)
html = Nokogiri::HTML(doc.body)
@result= html.css('#matchDetailWrap > div.user-content-layer__matches-content > div:nth-child(1) > div > div > div.user-content-layer__matches-list > ul > li:nth-child(1) > div.matches-item__summary > div.matches-item__column.matches-item__column--status > div.matches-item__reload-time')
@result.attr('data-ago-data').value
end



end
