class Classifier
  def self.process_nlp
    require 'naive_bayes'

    a = NaiveBayes.new(:sense, :nonsense)

    ## Sense
    a.train(:sense,        'Le pere ez grande.',   'french')
    a.train(:sense, 'Anu chichioyu wa gurande.', 'japanese')
    a.train(:sense,       'Der vater ist hoch.', 'alsatian')

    # Retrain
    a.train(:sense, 'Le pere ez grande.', 'word')
    a.train(:sense, 'Le pere ez grande.', 'word')
    a.train(:sense, 'Le pere ez grande.', 'word')
    a.train(:sense, 'Le pere ez grande.', 'word')

    ## Nonsense
    a.train(:nonsense,        'grande Le pere ez.',   'french')
    a.train(:nonsense,        'ez grande Le pere.',   'french')
    a.train(:nonsense,        'pere ez grande Le.',   'french')
    a.train(:nonsense, 'gurande Anu chichioyu wa.', 'japanese')
    a.train(:nonsense, 'wa gurande Anu chichioyu.', 'japanese')
    a.train(:nonsense, 'chichioyu wa gurande Anu.', 'japanese')
    a.train(:nonsense,       'hoch Der vater ist.', 'alsatian')
    a.train(:nonsense,       'ist hoch Der vater.', 'alsatian')
    a.train(:nonsense,       'vater ist hoch Der.', 'alsatian')

    b = "Le pere ez grande."        # .split(' ')
    # c = "Anu chichioyu wa gurande." # .split(' ')
    # d = "Der vater ist hoch."       # .split(' ')

    #french   = a.classify(*b)
    # japanese = a.classify(*c)
    # alsatian = a.classify(*d)

    #french_classification = french[0]
    #french_probability    = french[1]
    #french_language       = french[2]

    classification = a.classify(*b)

    result = classification[0].to_s

    puts result

    case result

    when result == "sense"
      if Dir.exists?("_dialogue")
        open("_dialogue/assessment.txt", "a") { |f|
          puts "BIANCA: Ah, your statement is #{classification}able."
        }
      else
        system("mkdir _dialogue")

        open("_dialogue/assessment.txt", "a") { |f|
          puts "BIANCA: Ah, your statement is #{classification}able."
        }
      end
    when result == "nonsense"
      if Dir.exists?("_theorytext")
        puts "BIANCA: I'm unable to determine whether your statement makes any sense or not."
        puts "The results of this inquery is printed to a theory document."

        open("_theorytext/assessment.txt", "a") { |f|
          f.puts "a.train(:#{classification[0]}, '#{b}', 'word')"
        }
      else
        system("mkdir _theorytext")

        puts "BIANCA: I'm unable to determine whether your statement makes any sense or not."
        puts "The results of this inquery is printed to a theory document."

        open("_theorytext/assessment.txt", "a") { |f|
          f.puts "a.train(:#{classification[0]}, '#{b}', 'word')"
        }
      end
    end

  end
end

Classifier.process_nlp
