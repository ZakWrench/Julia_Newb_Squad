

"""
      song(n::Int)

Repeat lyrics to son starting at 'n' and counting down to 1.

"""

song_function = function song(start::Int)
  # defining an anonymous fct lines(i) that returns a string
  # we assign
  lines(i) = i == 0 ? "No more lines" : i == 1 ? "1 line" : "$i lines"

  for i in start:-1:1
    # string interpolation
    println("""
            i = $i \n lines(i) = $(lines(i)) \n
            $(lines(i)) of code on the screen,
            $(lines(i)) of code...
            \tControl the flow
            \tDelete one row
            $(lines(i-1)) of code on the screen.
            """)
  end
end
song_function(10)

######

"""
MARKDOWN TEXTEUH
      nimgame()
    Play nim game:
    Game starts with n token.
    User goes first. Julia goes second
    Each player takes 1, 2, or 3 tokens per turn
    The player who takes the last token wins
"""

function nimgame(tokencount::Int)
  takenum = 0
  while true
    if tokencount >= 40
      tokencount = 40
    end
    while true
      # create a collection(array) of 1 to 3 or tokencount
      permitted = collect(1:min(3, tokencount))
      println("\nThere are $tokencount tokens lefts.")
      print("How many tokens do you take($permitted)? ")
      takenum = parse(Int, readline())
      if takenum in permitted
        break
      end
    end
    tokencount -= takenum
    if tokencount > 0
      takenum = rand(1:min(3, tokencount)) # Julia takes a random number of tokens
    else
      takenum = 0
      println("You won, congratulations.")
      break
    end
    tokencount -= takenum
    println("\n Julia takes $takenum tokens.")
    println("There are $tokencount tokens left.")
    if tokencount == 0
      println("JULIA WINS, TRY AGAIN.")
      break
    end
    if tokencount <=  # avoid infinite loop
       break
    end
  end
end

function input_token()
  println("How many tokens do you want to start with?")
  tokencount = parse(Int, readline())
  nimgame(tokencount)
end
input_token()

####

"""
      magic8ball()
    Ask a question and get an answer
"""

function magic8ball()
  magic_eight_ball_responses = ["It is certain",
    "It is decidedly so",
    "Without a doubt",
    "Yes, definitely",
    "You may rely on it",
    "As I see it, yes",
    "Most likely",
    "Yes",
    "Signs point to yes",
    "Reply hazy try again",
    "Ask again later",
    "Better not tell you now",
    "Cannot predict now",
    "Concentrate and ask again",
    "Don't count on it",
    "My reply is no",
    "My sources say no",
    "Outlook not so good",
    "Very doubtful"
  ]

  while true
    println("Ask a yes/no question (blank to exit):")
    if readline() == ""
      break
    end
    resp = magic_eight_ball_responses[rand(1:20)]
    second_resp = lowercase(rand(magic_eight_ball_responses))
    println(resp)
    while true
      if second_resp != resp
        break
      end
    end
    println("\nOr, maybe ", second_resp, ", you can't never be sure.\n")
  end
end
magic8ball()

####

