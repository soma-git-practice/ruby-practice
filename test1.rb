# これは、railsチュートリアル第４章　リスト4.12の下の演習後、オリジナルで作成したものです。

#　スタートは？
# param = {}
# persons = [
  # 苗字：苗字
  # 構成：
    # {属性：属性１、名前：名前１},
    # {属性：属性２、名前：名前２},
    # {属性：属性３、名前：名前３}
# ]

#　ゴールは？
# param ={
#   属性１:{
#     first:"苗字",
#     last:"名前１"
#   },
#   属性２:{
#     first:"苗字",
#     last:"名前２"
#   },
#   属性３:{
#     first:"苗字",
#     last:"名前３"
#   }
# }

def sort_family(variable,family)
  family[:member].each do |item|
    variable[item[:attribute].to_sym] = { first_name: family[:first_name], last_name: item[:last_name] }
  end
  return variable
end

#### test ####
test_wrapper = {}
test_persons = {
  first_name: "田中",
  member:[
  {attribute:"father",last_name:"太郎"},
  {attribute:"mother",last_name:"花子"},
  {attribute:"son",last_name:"健二"}
  ]
}

test_answer = {
  father:{
    first_name:"田中",
    last_name:"太郎"
  },
  mother:{
    first_name:"田中",
    last_name:"花子"
  },
  son:{
    first_name:"田中",
    last_name:"健二"
  }
}

sort_family(test_wrapper,test_persons)
puts "テスト成功" if test_answer == test_wrapper
#### test ####

satou_wrapper = {}
satou = {
  first_name: "佐藤",
  member:[
  {attribute:"father",last_name:"哲人"},
  {attribute:"mother",last_name:"真澄"},
  {attribute:"daughter",last_name:"かよ"}
  ]
}

sort_family(satou_wrapper,satou)
puts test_wrapper[:daughter].nil?;
puts satou_wrapper;