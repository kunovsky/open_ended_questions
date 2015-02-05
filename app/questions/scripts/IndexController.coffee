angular
  .module('questions')
  .controller 'IndexController', ($scope, supersonic) ->

    $scope.current        = 1
    $scope.totalQuestions = 51
    $scope.options        = duration: 0.3 ; curve: "linear"
    $scope.questions      = {
      1: "What do you want your life to be like, say, in three years from now?"
      2: "How do you see your work changing in the future?"
      3: "How do you feel about our physical home? Any architectural changes you’d like to make?"
      4: "How would you compare yourself as a mother (father) to your own mother (father)?"
      5: "What kind of person do you think our child(ren) will become? What are your fears? What are your hopes?"
      6: "Is our child like anyone in your family? Who?"
      7: "How do you feel about your family right now? Have these feelings changed lately?"
      8: "How do you feel about work now?"
      9: "How are you feeling now about being a mother (father)?"
      10: "What do you find exciting in life right now?"
      11: "What are your biggest worries about the future?"
      12: "How do you think we could have more fun in our life?"
      13: "Who are your best allies and close friends right now? How have they or you changed?"
      14: "Have any of your friends drifted away or become a bit weird?"
      15: "Who in your life is most stressful to you? Why?"
      16: "What do you need right now in a friend?"
      17: "What things are missing in your life?"
      18: "How have you changed in the last year?"
      19: "Have your goals in life changed recently?"
      20: "What are some of your life dreams now?"
      21: "What goals do you have for our family?"
      22: "What goals do you have just for yourself right now?"
      23: "What is one way you would like to change yourself?"
      24: "What legacy do you want our family to take from your family? From your culture?"
      25: "What are some unfulfilled things in your life?"
      26: "What would you change about our finances right now?"
      27: "Where would you like to travel?"
      28: "What adventures would you like to have before you die? "
      29: "Has your outlook on life changed in the past two years?"
      30: "If you could live one other person’s life, whose life would you choose and why?"
      31: "If you could live during any other time period in history, when would you choose to live and why?"
      32: "What do you imagine your life would be like if you lived 100 years from now?"
      33: "If you could design the perfect house for us, what would it look like?"
      34: "If you could choose any other career or vocation other than what you do now, what would you choose and why?"
      35: "What were the highlights and low-lights of your adolescence?"
      36: "If you could wake up tomorrow with 3 new skills in which you excelled, what would they be and why?"
      37: "If you could re-do any decade of your life, which decade would you choose and why? (example: your first 10 years, age 10 – 20, 20 – 30, etc.)"
      38: "What kind of year has this been for you?  Tell me the story of your proudest moment."
      39: "How have you changed as a daughter or son?"
      40: "How have you changed as a brother or sister?"
      41: "What relatives have you felt closest too and why?"
      42: "Who has been the most difficult person in your life (other than a partner or spouse) and why?"
      43: "If you could change into any animal for 24 hours, what would it be and why?"
      44: "Who was your childhood hero or heroine and why?"
      45: "If you could live in any other country but your home country, which would you pick and why?"
      46: "If you could experience being any other person for 24 hours, who would you pick and why?"
      47: "If you could be a genius in any art, music, drama, or dance, which talent would you choose and why?"
      48: "If you could be a superstar in any sport, which sport would you choose and why?"
      49: "If you could be the richest person in the world, what would you do with your money?"
      50: "If you could look like anyone else in the world, who would you pick & why?"
      51: "If you could change one characteristic about yourself, what would it be and why?"
    }

    $scope.previousQuestion = () ->
      $scope.current -= 1
      $scope.current = $scope.totalQuestions if $scope.current < 1
      supersonic.ui.animate("slideFromLeft", $scope.options).perform()

    $scope.nextQuestion = () ->
      $scope.current += 1
      $scope.current = 1 if $scope.current > $scope.totalQuestions
      supersonic.ui.animate("slideFromRight", $scope.options).perform()

    $scope.currentQuestion = () -> $scope.questions[$scope.current]

    $scope.resetQuestions = () ->
      return if $scope.current == 1
      $scope.current = 1
      supersonic.ui.animate("slideFromLeft", $scope.options).perform()