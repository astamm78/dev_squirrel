class HaikusController < ApplicationController

  def index
    @title = "Haiku"
    @body_class = "haiku"
    if Haiku.stale
      doc = Nokogiri::HTML(open("http://www.andrewshaikus.com"))
      line_1 = doc.search('.line_1').inner_text
      line_2 = doc.search('.line_2').inner_text
      line_3 = doc.search('.line_3').inner_text
      @haiku = Haiku.find_by_line_1(line_1)
      if @haiku
        @haiku.update_attribues(:updated_at => Time.now)
      else
        @haiku = Haiku.create(:line_1 => line_1, :line_2 => line_2, :line_3 => line_3)
      end
    else
      @haiku = Haiku.all.sample
    end
  end

end