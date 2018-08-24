class HomeController < ApplicationController
def index

end

def about
end

def result
    
    results=['이 행동에 대해 나에게 책임이 있는가 없는가
의문이 생긴다면 당신에게 책임이 있는 것이다
-도스토예프스키
',
    '정치에 참여하기를 거부함으로써 받는 벌 중의 하나는
자신보다 못한 사람의 지배를 받는 것이다
-플라톤',
    '가장 위대한 영광은 한 번도 실패하지 않음이 아니라
실패할 때마다 다시 일어서는 데에 있다
-공자',
    '어려운 일은 그것이 쉬울 때 계획을 세우고, 
큰일은 그것이 작을 때 해야 한다.
-도덕경 63장',
    '어떻게 죽어야 할지 배우게 되면 어떻게 살아야 할지도 배울 수 있어.
    -모리와 함께한 화요일',
    ]
    
    @result = results.sample(1)
  

respond_to do |format|
    format.js
  end
end

def book
end

end

