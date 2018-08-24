class HomeController < ApplicationController
def index

end

def result
    
    results=['그릭데이',
    '돈천동',
    '참참참',
    '더 파니니',
    '아무것도 없음',
    '루이스번즈',
    '노란집',
    '엘수에뇨',
    '서브웨이',
    'Ecc 푸드코트',
    '서백자와 허규일',
    '뽀모도로',
    '포포나무'
    ]
    
    @result = results.sample(1)
  

respond_to do |format|
    format.js
  end
end

def book
end

end

