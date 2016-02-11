class RankingController < ApplicationController
    #haveされているアイテムのランキング表示
    def have
        @items = Item.all.order("have_users DESC").limit(10)
    end
    #wantされているアイテムのランキング表示
    def want
        @items = Item.all.order("want_users DESC").limit(10)
    end
end
