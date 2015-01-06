angular
  .module('questions')
  .controller 'IndexController', ($scope, supersonic) ->

    $scope.current        = 1
    $scope.totalQuestions = 29
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