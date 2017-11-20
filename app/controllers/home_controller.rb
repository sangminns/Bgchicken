class HomeController < ApplicationController
  def index
    @random = Board.order("RANDOM()").limit(3).where(board_create_time: 1510498800..1511060399)
  end
  
  def random
     
  end
  
  # http://www.hipenpal.com/tool/date-string-to-unix-time-mktime-converter-in-korean.php
  # 유닉스 시간 변환 홈페이지
  
  # 17년 11월 13일 00:00 00초(1510498800) ~ 17년 11월 19일 11:59 59초 (1511060399)
  
end

# # 사진을 저장하는 DB -> MODEL / limit(3) -> 3명 / 1510498800은 시간을 UNIX시간으로 나타낸 숫자입니다.
# @random = Model.order("RANDOM()").limit(3).where(model_create_time: 1510498800..1511060399)

