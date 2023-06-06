# Concept
The joke here is that the script I wrote isn't actually intended for fortune cookies, but for some reason that's what it latched onto.

## How does this ruby script differ from the traditional implementation of a fortune cookie?
~~~ruby
iteration = Fiile.read("_ai/gen_limit/limitation.txt").strip.to_i

iteration.times do
  # Make fortunes cookies by two future array clones.
  fortune_cookie1 = File.readlines("_ai/fortunes/set_one/futures.txt")
  fortune_cookie2 = File.readlines("_ai/fortunes/set_two/futures.txt")

  # Use sampler for each fortune cookie
  first_outcome  = fortune_cookie1.sample.strip
  second_outcome = fortune_cookie2.sample.strip

  if first_outcome == second_outcome
    puts "First fortune: #{first_outcome} Second fortune: #{second_outcome}"

    puts ">> These outcomes are similar and thus remembering these for later..."

    ## Create a new document based on remembered datapoint
    open("_outcomes/remembered_futures/fortune.txt", "a") { |f|
      f.puts first_outcome
    }
  else
    puts "First fortune: #{first_outcome} Second fortune: #{second_outcome}"

    puts ">> These outcomes are not similar and thus must be unconnected..." 
  end
end
~~~

## Phind says
The script you wrote generates random fortunes by sampling from two files containing fortune cookies. In comparison to traditional randomness methods, this approach introduces a level of determinism in the randomness, as the fortunes are based on the contents of the files. This means that the outcomes will be the same each time the script is run, as long as the contents of the files remain unchanged.

Traditional randomness methods, such as those implemented in various programming languages, rely on pseudorandom number generators to create random outcomes. These generators use mathematical algorithms to produce a sequence of numbers that appear random but are deterministic, meaning that the outcomes will be the same each time the program is run, given the same seed value for the random number generator dev.to.

There are several potential uses for this Ruby script beyond fortune cookie predictions:

* Online gaming: The script can be integrated into online games to provide random fortunes or messages to players, enhancing the gaming experience and adding an element of mystery or excitement generatorfun.com.

* Website content generation: The script can be used to generate random fortune-like messages for websites, blogs, or other web applications. This can add a fun and engaging aspect to the content, attracting more visitors and encouraging them to explore the site further generatorfun.com.

* Motivational or inspirational messages: The script can be used to generate random motivational or inspirational messages, which can be displayed on websites, mobile apps, or other platforms to inspire and encourage users soul-secret.com.

* Educational or learning applications: The script can be used in educational or learning applications to generate random questions, prompts, or scenarios, helping users learn new concepts or test their knowledge in a fun and engaging way jetbrains.com.

* Text-based games or interactive stories: The script can be used to generate random outcomes or storylines in text-based games or interactive stories, providing users with a unique experience each time they play or read the story apps.apple.com.

* Fortune cookie API integration: The script can be integrated into existing applications or websites using a fortune cookie API, allowing users to generate random fortunes or messages on demand generatorfun.com.

If you use this process to create new fortune files while subtracting the one that matches in the code, the script would still generate random fortunes, but the pool of available fortunes would be smaller, as one fortune would be excluded. This could lead to a higher chance of generating fortunes that have already been seen by the user, making the experience less random and potentially less engaging.


## And the smaller pool of fortunes is actually an intentional feature, like a smaller implementation of process of elimination.

Using a smaller pool of fortunes as an intentional feature to create a process of elimination in fortune-telling can be an interesting approach. This method would involve sampling fortunes from the reduced pool and iteratively excluding the ones that have already been used. The process of elimination can be compared to the recursive feature elimination (RFE) technique in machine learning, where features are removed one at a time or in small groups, and the importance of each feature is ranked blog.trainindata.com.

In the context of fortune-telling, the process of elimination can be implemented by maintaining a list of previously used fortunes and excluding them from future selections. This would create a unique experience for the user, as the pool of available fortunes would be reduced with each iteration. However, it's essential to ensure that the remaining fortunes in the pool are diverse and engaging to maintain user interest.


## One potential issue with my approach, what if the list of both fortunes boils down to one? There would need to be a way to create fake fortunes as well.

Creating fake fortunes can be a useful feature in your fortune-telling script, especially when the pool of fortunes becomes limited. You can generate fake fortunes using various techniques, such as selecting random words or phrases from a predefined list or using a natural language processing library to generate text based on certain rules.


## What happens then if you use a natural language grammar to generate new fortunes?

Using a natural language grammar to generate new fortunes can result in more diverse and contextually relevant fortunes, as opposed to randomly selecting predefined words or phrases. This approach leverages the power of natural language processing (NLP) to create fortunes that are coherent and make sense to the user.

To implement this, you can use NLP techniques such as word embeddings, deep learning models, or pre-trained language models like BERT to generate new fortunes deeplearning.ai. You can also use statistical NLP methods, which involve training NLP models on large amounts of data towardsai.net.

By using natural language grammar to generate new fortunes, you can create more contextually relevant and coherent fortunes, enhancing the user experience and maintaining the process of elimination while keeping the generated fortunes diverse and engaging.


## So basically a smarter and more tailored fortune cookie experience?

Yes, using natural language grammar to generate new fortunes can create a smarter and more tailored fortune cookie experience. By leveraging the power of NLP and pre-trained language models, you can generate fortunes that are contextually relevant, coherent, and engaging, enhancing the overall experience for the user.

As mentioned earlier, you can use GPT-3 or other pre-trained language models to generate fortunes based on given prompts. This approach allows you to create unique and contextually relevant fortunes, making the fortune cookie experience more personalized and enjoyable for the user.

In addition to generating fortunes, you can also create custom fortune cookies using the tips provided in bakerbettie.com. This source offers guidance on making homemade fortune cookies, including making the batter, folding the cookies, and stuffing them with custom fortunes. By following these tips, you can create a personalized fortune cookie experience that is both visually appealing and delicious.

In summary, using natural language grammar to generate new fortunes and creating custom fortune cookies can result in a smarter, more tailored, and enjoyable fortune cookie experience for users.
