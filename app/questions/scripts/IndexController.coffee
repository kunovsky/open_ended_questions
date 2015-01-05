angular
  .module('questions')
  .controller 'IndexController', ($scope, supersonic) ->

    $scope.current        = 1
    $scope.totalQuestions = 87
    $scope.options        = duration: 0.3 ; curve: "linear"
    $scope.questions      = {
      1: "What is your partner's favorite meal? Design it."
      2: "What would be a “nightmare meal” for your partner? Design it."
      3: "What are your partner's special hobbies?"
      4: "What is your partner's keenest interest?"
      5: "Name your partner's two closest friends."
      6: "Describe in detail your partner's day, either today or yesterday."
      7: "Name one of your partner's major rivals or “enemies”."
      8: "Which people does your partner most admire in the world?"
      9: "Name your partner's two favorite movies."
      10: "What is your partner's favorite way to spend an evening?"
      11: "When is your partner's birthday?"
      12: "What are your partner's favorite and least favorite colors?"
      13: "When is your partner's favorite time for lovemaking?"
      14: "Name your partner's two favorite TV shows."
      15: "With whom does your partner currently have a conflict?"
      16: "What is your partner's favorite animal?"
      17: "What was one of your partner's best childhood experiences?"
      18: "What is the date of your anniversary?"
      19: "What does your partner like to do with time off?"
      20: "What is your partner's favorite way of being soothed?"
      21: "What turns your partner on sexually?"
      22: "What is your partner's ideal vacation destination?"
      23: "Who or what is your partner's greatest source of support (other than you)?"
      24: "What is your partner's favorite flower?"
      25: "What are your partner's favorite sports to play, or watch and follow?"
      26: "What would your partner buy or do if he or she won the lottery?"
      27: "What is your partner's favorite getaway place, and why?"
      28: "What are some important events coming up in your partner's life and how does he or she feel about them?"
      29: "What is your partner's social security number?"
      30: "What is one thing your partner would like to change about you?"
      31: "What is one thing your partner would like to do to improve your relationship?"
      32: "What people in your partner's life does he or she most admire, and why?"
      33: "What are some of your partner's favorite ways to work out?"
      34: "What people in your partner's life does he or she least admire, and why?"
      35: "What is your partner's favorite cologne or perfume?"
      36: "What are your partner's favorite clothes to wear for dressing up?"
      37: "What was your partner wearing when you first met?"
      38: "Who was your partner's best friend in childhood?"
      39: "Who is your partner's favorite relative, and why?"
      40: "Where was your partner born?"
      41: "What medical problems does your partner worry about?"
      42: "Who is your partner's favorite poet or writer?"
      43: "What is your partner's favorite side of the bed?"
      44: "What is your partner's favorite kind of reading?"
      45: "What are two of your partner's favorite holidays, and why?"
      46: "What is one of your partner's favorite magazines?"
      47: "Who is your partner's least favorite relative, and why?"
      48: "What is your partner's favorite holiday, and why?"
      49: "What would be your partner's ideal job?"
      50: "What is one of your partner's favorite books?"
      51: "What is one of your partner's favorite musical groups, composer, and instrument?"
      52: "What is one of your partner's favorite ways to spend a weekend?"
      53: "What would be the toughest problem your partner ever faced?"
      54: "What is your partner's favorite romantic restaurant?"
      55: "What is your partner's favorite tree?"
      56: "What was your partner's most embarrassing moment?"
      57: "What was the most stressful time in your partner's past life, and why?"
      58: "What would be your partner's most comforting pastime when sick?"
      59: "What was your partner's saddest life event?"
      60: "What is your partner currently most sad about?"
      61: "What event in your partner's life made him or her most angry?"
      62: "What would be your partner's happiest life event so far?"
      63: "What is your partner's favorite way to exercise?"
      64: "What would be your partner's ideal birthday present?"
      65: "What is your partner's major fear?"
      66: "What is most missing from your partner's life right now?"
      67: "What  is your partner's “perfect storm” or life disaster scenario?"
      68: "What was your partner's worst life event so far?"
      69: "What was your partner's most recent worst day, and why?"
      70: "What two things make your partner most angry?"
      71: "What are your partner's current stresses and worries?"
      72: "What are the best parts of your partner's current job or school life?"
      73: "What would be your partner's favorite way to spend time with friends?"
      74: "What would your partner do to get over being sad?"
      75: "What was your partner's favorite vacation or adventure to date?"
      76: "What are two things your partner is proudest about himself or herself?"
      77: "What would your partner most like to do to celebrate a triumph or success?"
      78: "What is your partner's fondest dream, as yet unrealized?"
      79: "What makes your partner feel most competent?"
      80: "What adventure would your partner wish to have in life?"
      81: "What personal improvements would your partner wish to make in his or her life?"
      82: "What relationship you know does your partner think is good, and why?"
      83: "What is your partner's secret ambition?"
      84: "Which couple you know does your partner think is a disaster, and why?"
      85: "What second career would your partner be most likely to choose?"
      86: "What job or career would your partner most want to avoid? "
      87: "What is your partner's favorite erotic experiences?"
    }

    $scope.previousQuestion = () ->
      return if $scope.current == 1
      $scope.current -= 1 unless $scope.current == 1
      supersonic.ui.animate("slideFromLeft", $scope.options).perform()

    $scope.nextQuestion = () ->
      return if $scope.current == $scope.totalQuestions
      $scope.current += 1 unless $scope.current == $scope.totalQuestions
      supersonic.ui.animate("slideFromRight", $scope.options).perform()

    $scope.currentQuestion = () -> $scope.questions[$scope.current]

    $scope.resetQuestions = () ->
      return if $scope.current == 1
      $scope.current = 1
      supersonic.ui.animate("slideFromLeft", $scope.options).perform()