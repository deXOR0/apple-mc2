//
//  StaticStoriesData.swift
//  comittea
//
//  Created by Atyanta Awesa Pambharu on 17/06/22.
//

import Foundation

class StaticStoriesData {
    static var stories: [Story] = [
        Story("Movie Night", """
    What a boring weekend I am having right now. Just sitting and doing nothing. Suddenly it hits me, I could go to the movies with my friends. I ask Cody to help me plan my movie night.
    """, "Story_Logo_Movie", "Story_Background_Movie",
    [
        Chapter("Planning Ahead", "Chapter_Planning Ahead", "Buying Tickets",
        [
            CompyConversationMessage("You're going to the movies?"),
            UserConversationMessage("Yes I am."),
            CompyConversationMessage("Well, before you do, you need to plan things ahead of time!"),
            UserConversationMessage("Plan what?"),
            CompyConversationMessage("You know, planning and listing the tasks that needs to be done."),
            UserConversationMessage("Guess you're right. Let's do it then!"),
            MultiSelectMessage(
                "What would you need to do? Select the tasks that needs to be done from the objective: “Having a movie night with friends at the cinema”",
                [
                    "Gather Friends",
                    "Choosing movie",
                    "Buying tickets online",
                    "Meet up with friends",
                    "Taking seats at the cinema",
                    "Watch the movie",
                    "Going shopping",
                    "Making Coffee",
                    "Watching TV",
                ],
                [
                    "Gather Friends",
                    "Choosing movie",
                    "Buying tickets online",
                    "Meet up with friends",
                    "Taking seats at the cinema",
                    "Watch the movie",
                ],
            CompyTrueMessage("Great job! You are going to have a lot of fun in this movie night."),
            CompyFalseMessage("""
            That's not it. Well, the most logical way of planning the movie is:

            - Buying tickets online
            - Choosing movie
            - Watch the movie
            - Meet up with friends
            - Taking seats at the cinema
            - Gather Friends

            When breaking down the tasks, consider the context and objective that we wanted to do.
            """),
            false
            ),
            CompyConversationMessage("Nice Work User. After having chosen the tasks, it is time to rearrange them in the correct order so that we can do the tasks more efficiently."),
            ReorderMessage(
                "This time, you need to rearrange the tasks in the correct order.", [
                    "Gather Friends",
                    "Choosing movie",
                    "Buying tickets online",
                    "Meet up with friends",
                    "Taking seats at the cinema",
                    "Watch the movie",
                ],
                [
                    "Gather Friends",
                    "Choosing movie",
                    "Buying tickets online",
                    "Meet up with friends",
                    "Taking seats at the cinema",
                    "Watch the movie",
                ],
                CompyTrueMessage("That's right User. When performing a task, we have to do it in an orderly fashion, we cannot skip a step, or start from the bottom and work your way backward."),
                CompyFalseMessage("""
                That's not the right order. When performing a task, we have to do it in an orderly fashion, we cannot skip a step, or start from the bottom and work our way backward.
                Here is the answer in the correct order
                - Gather Friends
                - Choosing movie
                - Buying tickets online
                - Meet up with friends
                - Taking seats at the cinema
                - Watch the movie
                """),
                false
            ),
            CompyConversationMessage("What are your thoughts? Is it important for us to list and order the tasks as we have done just know?"),
            SingleChoiceMessage(
                "Do you think it is necessary to list and reorder the tasks that we wanted to do?",
                ["Yes it is", "I don't think so",],
                "Yes it is",
                CompyTrueMessage("Yep that's right. After all, we do want to plan things out so that it is easier for us to know what are the important tasks we need to work on and which tasks we need to do first."),
                CompyFalseMessage("That is not true. We really need to plan things out first. After all we wouldn't want to be left with too much ticket when we haven't even asked who's coming yet."),
                false
            ),
            CompyConversationMessage("Did you know, when we break down our objective that is “Having a movie night with friends at the cinema”, we're actually doing what programmers called decomposition."),
            CompyConversationMessage("Decomposition helps us to break down big, single task, into smaller, more manageable tasks to help us do the tasks more efficiently."),
            CompyConversationMessage("By doing this, we can also prioritize which task we need to do first."),
            CompyConversationMessage("This technique will also help us when we do programming, where one program could have varieties of features, we need to break down what we need to be working on first and prioritize on which feature is the most critical in order for the program to function properly."),
            CompyConversationMessage("To be able to understand it further, I'm going to present another case where we might need to do decomposition."),
            CompyConversationMessage("Let's say that you, User, are being asked to prepare a sandwich for school lunch."),
            CompyConversationMessage("What are the processes needed to be included so that you can make a sandwich?"),
            MultiSelectMessage(
                "Select the tasks that needs to be done from the objective: “Having a movie night with friends at the cinema”",
                [
                    "Pack sandwich",
                    "Stack ingredients",
                    "Cut sandwich in half",
                    "Buy the ingredients",
                    "Cook raw ingredients",
                    "Buy knife",
                    "Boil Water",
                    "Wear watch"
                ],
                [
                    "Pack sandwich",
                    "Stack ingredients",
                    "Cut sandwich in half",
                    "Buy the ingredients",
                    "Cook raw ingredients"
                ],
                CompyTrueMessage("You're getting the hang of it. Every process that we chose directly contribute in making the sandwich."),
                CompyFalseMessage("""
                That's not quite right. We need to choose every process that directly contribute in making the sandwich.
                Here is the right tasks:
                - Pack sandwich
                - Stack ingredients
                - Cut sandwich in half
                - Buy the ingredients
                - Cook raw ingredients
                """),
                false
            ),
            CompyConversationMessage("Now let's reorder the tasks in the correct order."),
            ReorderMessage(
                "This time, you need to rearrange the tasks in the correct order.",
                [
                    "Buy the ingredients",
                    "Cook raw ingredients",
                    "Stack ingredients",
                    "Cut sandwich in half",
                    "Pack sandwich"
                ],
                [
                    "Buy the ingredients",
                    "Cook raw ingredients",
                    "Stack ingredients",
                    "Cut sandwich in half",
                    "Pack sandwich"
                ],
                CompyTrueMessage("Nice work User!"),
                CompyFalseMessage("""
                That is not the correct order. The right order should have been:
                - Buy the ingredients
                - Cook raw ingredients
                - Stack ingredients
                - Cut sandwich in half
                - Pack sandwich
                Don't worry, keep on practicing. You'll get there.
                """),
                false
            ),
            CompyConversationMessage("Now that we're done listing the task, we can continue onto the next step."),
        ]),
        Chapter("Buying Tickets", "Chapter_Buying Tickets", "Seating Placement",
        [
            NarrationMessage("Last time, you had planned on what tasks that needs to be done when going on a movie night with friends. Right now you will continue to work on the tasks on the list."),
            CompyConversationMessage("Now let's see what we need to do first."),
            UserConversationMessage("From what I listed down, I need to gather friends to watch the movie together."),
            UserConversationMessage("Maybe I Should contact them to see if anyone is available to watch it tonight."),
            CompyConversationMessage("Okay, go and ask them."),
            NarrationMessage("Few moments later…"),
            UserConversationMessage("Hey Compy, 4 of my friends want to watch the movie together!"),
            CompyConversationMessage("Alright, now we need to choose which movie to watch."),
            UserConversationMessage("Okay then I will ask them what kind of movie that we can agree to watch together."),
            SingleChoiceMessage(
                "Some of your friends describe the kind of movie they will be interested to. They did mention wanted to watch movie with guns, explosives and fights. Which of these genres do you think best represent that kind of movie?",
                [
                    "Romance",
                    "Drama",
                    "Action",
                    "Comedy"
                ],
                "Action",
                CompyTrueMessage("I think action movie will be the one they have interest in watching."),
                CompyFalseMessage("I don't think that is the right movie genre based on their preferences. Movies that has guns, explosives, and fights, will naturally be an action movie."),
                false
            ),
            UserConversationMessage("We've decided to watch an action movie."),
            CompyConversationMessage("Then you have to choose a movie with that genre."),
            UserConversationMessage("I'm Currently scrolling through the list of movies they are currently showing at the cinema."),
            UserConversationMessage("In this list, the things that are being presented to me were the movie poster, Genre, Synopsis, and also the movie length."),
            SingleChoiceMessage(
                "What method will you use in choosing one of the movies?",
                [
                    "Look at each movie one by one, examining its poster, genre, synopsis, and movie length, and keep on looking until one fits our category.",
                    "Only look at the genre level of every movie, and therefore eliminating movies without action in it's genre",
                ],
                "Look at each movie one by one, examining its poster, genre, synopsis, and movie length, and keep on looking until one fits our category.",
                CompyTrueMessage("Yes, that's the right way to do it. After all we wouldn't want to waste our time looking at movies that doesn't match our category."),
                CompyFalseMessage("No, that's not the right way to do it. We have established that our group only want to watch action movies, so we can set aside movies with other genre and only focus on action movies."),
                false
            ),
            CompyConversationMessage("How is it? Have you decided which movie to watch yet?"),
            UserConversationMessage("Sure, I had chosen to watch “AK48: Last Shootout”"),
            CompyConversationMessage("Wow that is quite an interesting movie indeed."),
            CompyConversationMessage("Now, onto buying the tickets online."),
            UserConversationMessage("About that, I was wondering if I Should ask everyone to buy their own tickets, or should I just buy it for them first, and let them pay me back later?"),
            SingleChoiceMessage(
                "Which one is the most efficient way of buying the tickets?",
                [
                    "I guess I'll just buy it for them first, and let them pay me later.",
                    "I think I'll let them buy the tickets themselves."
                ],
                "I guess I'll just buy it for them first, and let them pay me later.",
                CompyTrueMessage("Good Idea! By buying the tickets in bulk, we made sure everyone will seat next to each other and avoid other people from reserving our seats."),
                CompyFalseMessage("Well that will be a hassle. You might not seat next to each other when everyone is buying for themselves."),
                false
            ),
            CompyConversationMessage("Okay then, it's settled. We can now continue with the next task."),
            CompyConversationMessage("But before that, let's discuss what we did so far."),
            CompyConversationMessage("We have managed to choose movie genres and which movie our group will be watching."),
            CompyConversationMessage("Did you notice what we just did? We have learned what programmers call pattern recognition."),
            CompyConversationMessage("For example, when deciding which genre to watch, we notice some patterns that relates to action movie, which is guns, explosives, and fights. This is what we're used to seeing when watching action movies."),
            CompyConversationMessage("Another example is when we buy the tickets in bulk rather than let everyone buy their own tickets. We recognized that there is a repeating pattern to buy one ticket for each person in the group. Not only is this less time consuming, it also means that they can seat together without worrying if any of the seat might be taken by someone else."),
            CompyConversationMessage("Recognizing patterns helps us to make a more efficient program when coding by making one method for repeated actions which we can keep on using . This concept is highly educated in basic Object Oriented Programming."),
            CompyConversationMessage("Another technique we have just learned is called abstraction."),
            CompyConversationMessage("This is when we focus only on the important things, and set aside other information that we don't need."),
            CompyConversationMessage("This is exactly what we did when we're deciding on which movie to watch, we're only focusing on the movie genre part and eliminates any movie that does not conform to this genre."),
            CompyConversationMessage("This technique has also been done in programming, where we can call methods without needing to look at how it works."),
            CompyConversationMessage("Now let's try to solve other problems that involves pattern recognition and abstraction"),
            CompyConversationMessage("Imagine that you are waiter/waitress, trying to distribute beverages among the customer."),
            CompyConversationMessage("You are being tasked to distribute coffee and tea evenly. Each person gets their coffee in the order of their assigned number. There are 100 participant."),
            CompyConversationMessage("Then, you are giving the first person that comes to you a tea, and the next one coffee, the third person is being given tea, and the fourth person a coffee."),
            CompyConversationMessage("This process keeps on repeating as you distribute all the beverages."),
            CompyConversationMessage("Turns out, the 56th person you were giving drink to, was actually the governor himself."),
            CompyConversationMessage("The head of the waiters asked you what type of drink did you gave him, this is to ensure they can give the governor the appropriate snack that compliments the drink."),
            CompyConversationMessage("How would you know what kind of drink did you gave the governor?"),
            SingleChoiceMessage(
                "Choose the most logical answer:",
                [
                    "Look for the governor and ask him what type of drink did he took from you.",
                    "Call out the governor and ask him to come to you and tell you what type of drink did he drank just now",
                    "Calculate what type of drink you gave the 56th time you were distributing drinks."
                ],
                    "Calculate what type of drink you gave the 56th time you were distributing drinks.",
                CompyTrueMessage("That's right, the easiest way we can do is by calculating what drink the 56th person had gotten."),
                CompyFalseMessage("That is not the correct answer. Option A and B are not the most effective way we can do. After all we don't want to bother the most important person in the room."),
                false
            ),
            CompyConversationMessage("Since you knew the governor is the 56th person that took a drink from you, you can calculate what drink you did gave to the governor."),
            CompyConversationMessage("Every even person would certainly get Coffee, and since the pattern repeats itself you can be sure that the governor would have gotten a coffee."),
            CompyConversationMessage("Then, the head of the waiters asked you to bring the appropriate snacks to the governor."),
            CompyConversationMessage("Now you need to look for the governors table."),
            CompyConversationMessage("Each table have been assigned a card that contains a number and a name that corresponds to the person sitting on the table."),
            CompyConversationMessage("What is the fastest way to look for the governor through out the room?"),
            SingleChoiceMessage(
                "Which of these is the fastest way to find the governor?",
                [
                    "Ask each of the table who they are",
                    "Look for the governors number on the table's card",
                    "Look for the name of the governor on each table"
                ],
                "Look for the governors number on the table's card",
                CompyTrueMessage("Nice work, that would be the fastest way we can go about looking for the Governor."),
                CompyFalseMessage("That's not the fastest way. Asking each table and looking for the Governor's name will take a very long time to do."),
                false
            ),
            CompyConversationMessage("As long as we've known the number that has been assigned to the governor, we don't need to read each table's name or even ask each table their identity."),
            CompyConversationMessage("This is another example of when pattern recognition and abstraction is very useful to do."),
        ]),
        Chapter("Seating Placement", "Chapter_Seating Placement", "",
        [
            NarrationMessage("We did chose which movie to watch. Now we're trying to reserve the seats in the cinema for each group member."),
            CompyConversationMessage("Now, onto the next task that is buying tickets online."),
            UserConversationMessage("I'm using my phones app to buy the seats. I'm buying 5 seats for every member."),
            UserConversationMessage("Hmm, some of the group members remind me that they will be ordering food later on inside the cinema. If I'm not mistaken, the staff will only bring the food from the same order to one designated seat."),
            CompyConversationMessage("Okay, now you need to plan on how you are going to seat everyone."),
            CompyConversationMessage("Do you know why we need to buy the seat before the movie start?"),
            SingleChoiceMessage(
                "Why do we need to buy the seat ahead of time?",
                [
                    "To reserve the seat so that no other person can claim that seat.",
                    "Just to see if the seat is available."
                ],
                "To reserve the seat so that no other person can claim that seat.",
                CompyTrueMessage("That's right. If we don't reserve it beforehand, we might not get any seat left."),
                CompyFalseMessage("Well if we only wanted to see the available seats, we do not need to reserve it. We need to reserve it beforehand to make sure each of us get our own seat."),
                false
            ),
            UserConversationMessage("I see, well then I will reserve the seats."),
            CompyConversationMessage("In what way will you seat them User, together or separated?"),
            SingleChoiceMessage(
                "How will you seat everyone inside the cinema?",
                [
                    "Seat everyone in any available seats, even if some group member might seat separated from each other.",
                    "Seat everyone together so that nobody is left separated."
                ],
                "Seat everyone together so that nobody is left separated.",
                CompyTrueMessage("Great idea! We certainly wouldn't want anyone to be left separated."),
                CompyFalseMessage("Some of your friends will be seating by themselves. We certainly wouldn't want anyone to be left separated."),
                false
            ),
            CompyConversationMessage("You can seat them so that everyone is seated next to each other."),
            UserConversationMessage("It is a well planned movie night I would say so myself!"),
            CompyConversationMessage("What do you think User? Why would we want to seat everyone next to each other?"),
            SingleChoiceMessage(
                "",
                [
                    "Because when we're separated, we wouldn't be able to get into the cinema.",
                    "Because the waiter will only send the food from the same order to one designated seat."
                ],
                "Because the waiter will only send the food from the same order to one designated seat.",
                CompyTrueMessage("That's right, it will be easier if we seat next to each other and distribute the food without having to go around the studio looking for one another."),
                CompyFalseMessage("There isn't any rules in the cinema that says we cannot go in if we do not seat in groups. The reason that everyone needs to seat next to each other is that it will be easier if we seat together and distribute the ordered food without having to go around the studio looking for one another."),
                false
            ),
            CompyConversationMessage("Seating in group will be much more convenient."),
            CompyConversationMessage("When we try to plan on how the seating is going to be, It can also explain a concept in programming which is array."),
            CompyConversationMessage("In an array, a group of items of the same type can be stored inside one Array."),
            CompyConversationMessage("We also need to ‘reserve space' for the array. The amount of space needed depends on how many items we would want to store inside of it."),
            CompyConversationMessage("The way computer store array in memory is that it needs to store each item adjacent to each other, and each will be given their own address in the memory, similar to how we managed to buy the tickets and each of us get assigned our own seat number for example, C5, B7, and so on."),
            CompyConversationMessage("In an array, each item will be assigned an index, starting from 0 for the first item, 1 for the next item, and so on."),
            CompyConversationMessage("By doing this, it will be easier for the computer to look for the items as it only needs to know the address of the first item, and when it needs to find the other item, it will only need to add the index of the item itself."),
            CompyConversationMessage("Let's see what other example we can think of to understand more about this concept."),
            CompyConversationMessage("Right now you're inside your bedroom, trying to clean and tidy things up, until you notice that there were many books of novel series that has been lying on the floor. Each of them were related to each other as."),
            CompyConversationMessage("You have a book shelf with some part of it getting occupied by another book that you own."),
            CompyConversationMessage("Now let's try to tidy the books."),
            SingleChoiceMessage(
                "How will you go about and tidy the novel series?",
                [
                    "Put each of the novel in any available place",
                    "Group the novel in the order of the chapter, and place them in a group inside a blank space that will fit them all."
                ],
                    "Group the novel in the order of the chapter, and place them in a group inside a blank space that will fit them all.",
                CompyTrueMessage("C: You are absolutely correct. We have to put the books in a group based on the order of the chapter because every chapter is related to one another."),
                CompyFalseMessage("C: That's not the way to do it. Each novels are related to each other. That is why we need to put the books in a group based on the order of the chapter."),
                false
            ),
            CompyConversationMessage("We've finished putting the books back in the shelf. Then a few days later, you decided to continue to read the same novel series, this time you would want to read chapter 5."),
            CompyConversationMessage("You know exactly where you last put the first chapter of the novel series."),
            CompyConversationMessage("How will you look for the novel?"),
            SingleChoiceMessage(
                "In what way will you try to look for the mentioned novel?",
                [
                    "Look for the first chapter of the novel series, and then proceed to count up from there in order to find the 5th chapter.",
                    "Start to look from the top of the book shelf all the way down to the bottom of it until you find the right novel book."
                ],
                "Look for the first chapter of the novel series, and then proceed to count up from there in order to find the 5th chapter.",
                CompyTrueMessage("That's what I'm talking about. Good job on finding the book. Since we put the novel series in group and ordered it based on the chapter days before, we know that it will be located near the first one. From then onward we only need to count up to the 5th chapter."),
                CompyFalseMessage("That is not the most efficient way of looking for the book. Since we put the novel series in group and ordered it based on the chapter days before, we know that it will be located near the first one. From then onward we only need to count up to the 5th chapter."),
                false
            ),
        ])
    ]),
    Story("The Secretary", "The mayor is a very busy man, he has a lot of responsibilities. As time goes on, his workload seems to keep increasing. He decided that he needed help and hired you as his secretary. As a secretary, you're responsible for managing the mayor's schedule, setting up meetings, retrieving documents, etc.", "Story_Logo_Secretary", "Story_Background_The Secretary", [
        Chapter("Where are my Documents?", "Chapter_Documents", "Must Go Faster!",
        [
            CompyConversationMessage("Hey, %@! So how was your first day being the mayor's secretary?"),
            UserConversationMessage("It's pretty cool I guess. But..."),
            CompyConversationMessage("What is it?"),
            UserConversationMessage("You know that the mayor is a very busy man right?"),
            CompyConversationMessage("Right."),
            UserConversationMessage("He got a lot of projects going on, and you won't believe how many documents he got in his office"),
            CompyConversationMessage("How many?"),
            UserConversationMessage("When I got to his office, all I can see were documents! Piles and piles of them. There are documents stacked on the floor, sofa, desk, and cabinets."),
            CompyConversationMessage("Wow, how does he know which one he needed?"),
            UserConversationMessage("""
            That is the problem. He hasn't been diligent in organizing his documents.
            It's all scattered around. They are not kept in order or anything.
            """),
            UserConversationMessage("Throughout the day he would say something like \"Please bring me the document numbered 476 on the water treatment facility planning\", or \"Please bring me the document numbered 788 on public transportation mismanagement complaints\"."),
            CompyConversationMessage("Oh! At least you know the number and title of the document."),
            UserConversationMessage("Not really. Yes, there is a number written on the document's cover. But there are no titles whatsoever. I gotta read it to know which document it is."),
            CompyConversationMessage("Okay, so what do you do after you get a request from the mayor?"),
            ReorderMessage(
                "Reorder the tasks below to show the steps you need to take.", [
                    "Get the document number and topic from the mayor",
                    "Start from the leftmost pile",
                    "Look for the number, and read the content of the document",
                    "Retrieve the document if it matches the number and topic given.",
                    "Otherwise, if it doesn't match, move on to the next document",
                    "Give the document to the mayor",
                    "Get the document number and topic from the mayor",
                    "Pick a starting position",
                    "Look at the document number written on the cover",
                    "Retrieve the document if it matches the number",
                    "Otherwise, if the document number is lower than the number being asked, ignore that document and all   the numbers below it. If the document number is higher than the number being asked, ignore that document  and all the numbers above it. Pick a starting position and repeat the steps above.",
                    "Give the document to the mayor"
                ],
                [
                    "Get the document number and topic from the mayor",
                    "Start from the leftmost pile", "Look for the number, and read the content of the document",
                    "Retrieve the document if it matches the number and topic given.",
                    "Otherwise, if it doesn't match, move on to the next document",
                    "Give the document to the mayor",
                    "Get the document number and topic from the mayor",
                    "Pick a starting position", "Look at the document number written on the cover",
                    "Retrieve the document if it matches the number",
                    "Otherwise, if the document number is lower than the number being asked, ignore that document and all   the numbers below it. If the document number is higher than the number being asked, ignore that document  and all the numbers above it. Pick a starting position and repeat the steps above.",
                    "Give the document to the mayor"
                ],
                CompyTrueMessage("You are absolutely correct! When performing a task, you have to do it in an orderly fashion, you cannot skip a step, or start from the bottom and work your way backward."),
                CompyFalseMessage("""
                That's not quite right, it seems that you have the order wrong. No worries, here is the correct order.

                - Get the document number and topic from the mayor
                - Start from the leftmost pile
                - Look for the number, and read the summary of the document
                - Retrieve the document if it matches the number and topic given
                - Otherwise, if it doesn't match, move on to the next document
                - Give the document to the mayor
                
                When performing a task, you have to do it in an orderly fashion, you cannot skip a step, or start from the bottom and work your way backward.
                """),
                false
            ),
            CompyConversationMessage("This problem is known as searching. It is when you have a collection of items and you     need to find or retrieve a specific item from the collection."),
            CompyConversationMessage("What you just did is called a \"Linear Search\". Meaning you look for the item by     sequentially checking each item from the collection until the correct item is found."),
            UserConversationMessage("Yeah, but it's a hassle to have to check each documents one by one. Sometimes I even   miss it and I have got to start over again."),
            SingleChoiceMessage(
                "Do you think it is necessary to check each document one by one when looking for the        document in the     pile?",
                ["Yes", "No"],
                "Yes",
                CompyTrueMessage("Yes, it is actually necessary in this case, because the documents are scattered and not   stored in order. If you skip around or look for it randomly, you might miss the document that you're looking  for."),
                CompyFalseMessage("Unfortunately, you do need to check each document in this case, because the documents are    scattered and not stored in order. If you skip around or look for it randomly, you might miss the document     that you're looking for."),
                false
            ),
            CompyConversationMessage("Now as you can see, you have successfully broken down a task into smaller tasks. In   computer science, this is known as \"decomposition\"."),
            UserConversationMessage("Oh... It has a name?"),
            CompyConversationMessage("Of course! Decomposition is one of the fundamental to computational thinking. Doing   this helps us to start planning on how we can solve a problem more efficiently."),
            CompyConversationMessage("Not only can we start arranging the task that needs to be done, but we can also   prioritize which one we need to do first."),
            CompyConversationMessage("It is such a useful skill to have especially in programming where one program could   have varieties of features, we need to break down what we need to be working on first and prioritize which    feature is the most critical in order for the program to function properly."),
            UserConversationMessage("Thanks Compy! I'll keep that in mind!"),
            NarrationMessage("A few days later"),
            CompyConversationMessage("Hey, %@! How's it been?"),
            UserConversationMessage("Hi Compy! It's been going well. As time goes on I realize that the document's numbers  on the cover is unique. It never repeats!"),
            SingleChoiceMessage(
                "Knowing this, after getting an order of \"Please bring me the document numbered 346 on nuclear power   generator proposal\", what would you do?",
                [
                    "Look at the number on the cover and read the content of the document",
                    "Look at only the number on the cover of the document"
                ],
                "Look at only the number on the cover of the document",
                CompyTrueMessage("You're right! Knowing that the document number is unique, you won't need to waste your    time reading the content of the document, assuming that the mayor always gives you the correct number, which   he always does, by the way, you can decide whether or not it is the correct document just from the number on  the cover, which saves you and the mayor lots of time."),
                CompyFalseMessage("You could still do that, but reading the content of the document takes a lot of time.    Meanwhile, you know that the document number is unique. You won't need to waste your time reading the  content of the document, assuming that the mayor always gives you the correct number, which he always does,  by the way, you can decide whether or not it is the correct document just from the number on the cover,  which saves you and the mayor lots of time."),
                false
            ),
            UserConversationMessage("So now I can simplify the task. I'm no longer searching for a document, but instead    searching for a number."),
            UserConversationMessage("This simplifies and speeds up the process because I no longer have to look inside the  document or care about what it says, the only thing I care about is the number written on the cover of the   document."),
            UserConversationMessage("Other details associated with the document itself become irrelevant and can be     disregarded."),
            CompyConversationMessage("Pretty smart! In computer science, this process is known as abstraction. Abstraction  is a skill in which a person is able to decide what details needed to be highlighted and others that can be  ignored."),
            CompyConversationMessage("As an example, you abstracted the process of looking for a document to looking for a  number. So now if you are given the task \"Please bring me the document numbered 111 on wireless communication   tower zoning\", you can just focus on searching the number 111."),
            SingleChoiceMessage(
                "Let's review what we've learned so far. Breaking down a problem into smaller problems in order to help plan a solution efficiently is known as what?",
                ["Abstraction", "Algorithm", "Decomposition"],
                "Decomposition",
                CompyTrueMessage("You're absolutely right!"),
                CompyFalseMessage("Sorry. But the right answer is \"decomposition\""),
                false
            ),
            SingleChoiceMessage(
                "When riding a motorbike, we're only concerned about riding the bike, like turning the accelerator and squeezing the brake handles. We're not concerned about the bike's mechanism like how it accelerates, and how it translates our action of squeezing the brake handles into actually pressing the brake pads. This is known as...",
                ["Abstraction", "Algorithm", "Decomposition"],
                "Abstraction",
                CompyTrueMessage("You're absolutely right!"),
                CompyFalseMessage("Sorry. But the right answer is \"abstraction.\""),
                false
            ),
        ]),
        Chapter("Must Go Faster!", "Chapter_Faster", "Sort Problems",
        [
            CompyConversationMessage("Congratulation! I heard that you've been officially named the mayor's personal secretary."),
            UserConversationMessage("Thanks Compy! I couldn't have done it without you."),
            UserConversationMessage("Previously, you made me realize that I don't have to read through the document since there is a pattern of document numbers and document topics being correlated to one another."),
            CompyConversationMessage("Happy to help!"),
            CompyConversationMessage("This, by the way, is known as _pattern recognition_ in computer science. It involves finding the similarities or patterns among small, decomposed problems that can help us solve more complex problems more efficiently."),
            UserConversationMessage("Cool!"),
            UserConversationMessage("But still, I feel like my job can be done so much faster."),
            CompyConversationMessage("How so?"),
            UserConversationMessage("Although I've simplified the task of searching for a number instead of a document, I still need to sift through each document one by one. Which takes a lot of time! And there must be at least 1,000 documents in that office!"),
            SingleChoiceMessage(
                "If the mayor has 1,000 documents, in the worst case, how many documents do you have to look through to find a specific document?",
                ["100", "500", "1,000"],
                "1,000",
                CompyTrueMessage("You're right! In the worst case, the document you want is the last document that you check. And given that we have to look through each document once, we would have to look through all 1,000 documents just to find the one we needed."),
                CompyFalseMessage("Not quite. In the worst case, the document you want is the last document that you check. And given that we have to look through each document once, we would have to look through all 1,000 documents just to find the one we needed."),
                false
            ),
            UserConversationMessage("You see? This is highly inefficient!"),
            UserConversationMessage("As the number of documents increases, it would take me much more time to find a specific document."),
            CompyConversationMessage("I see... If the mayor received another 500 documents, making the total 1,500 documents. It would take you 1,500 tries in the worst case to find a specific document."),
            UserConversationMessage("I know right! How about if the mayor has 5,000 documents? Or 1,000,000 documents?"),
            CompyConversationMessage("Yes, the number of documents you have to look through increases linearly."),
            UserConversationMessage("So I begin to wonder to myself, is there a better way to do this?"),
            CompyConversationMessage("There is, actually! You know that the documents in the mayor's office are stored randomly and out of order, right?"),
            UserConversationMessage("Right."),
            CompyConversationMessage("But imagine for a second if they were stored in order. We would have an easier time finding the documents!"),
            UserConversationMessage("But wait, how?"),
            CompyConversationMessage("Let's decompose the problem and see the pattern shall we."),
            CompyConversationMessage("Rather than thinking of some arbitrary documents in some office, let's play a guessing game!"),
            UserConversationMessage("Alright."),
            CompyConversationMessage("I have some numbers for you."),
            CompyConversationMessage("100, 8, 75, 88, 19, 43, 96, 1, 223, 31"),
            CompyConversationMessage("Now, I'm going to pick a number from that list. But I'm not going to tell you which one. You have to guess!"),
            SingleChoiceMessage(
                "Alright, I have picked a number. Now you can guess which number I pick.",
                ["100", "8", "75", "88", "19", "43", "96", "1", "223", "31"],
                "96",
                CompyTrueMessage("Congratulation! You guessed correctly!"),
                CompyFalseMessage("Sorry, not my number. Guess again."),
                true
            ),
            CompyConversationMessage("Now that wasn't too hard, was it? It might take you a couple of tries but eventually, you got there!"),
            CompyConversationMessage("I don't really know your method for guessing, whether you choose each number one after the other or choose randomly. But the truth is, it's all the same."),
            UserConversationMessage("How so?"),
            CompyConversationMessage("You might be lucky and hit the answer first try, but the worst possible scenario is that the correct number is the last one that you pick. This is the problem that you face now as the secretary because the documents are stored out of order."),
            UserConversationMessage("I see... And it's just gonna get worst as the list of numbers grows."),
            CompyConversationMessage("Now you're getting it."),
            CompyConversationMessage("But what if the numbers are in order?"),
            CompyConversationMessage("1, 8, 19, 31, 43, 75, 88, 96, 100, 223"),
            CompyConversationMessage("Now, instead of telling you that you're wrong when you choose the wrong number, I can tell you to go higher or lower."),
            SingleChoiceMessage(
                "Let's play another game.",
                ["1", "223", "31", "1", "8", "19", "31", "43", "75", "88", "96", "100", "223"],
                "100",
                CompyTrueMessage("Congratulation! You guessed correctly!"),
                CompyFalseMessage("Go lower!"),
                true
            ),
            UserConversationMessage("Hey! That's actually much easier!"),
            CompyConversationMessage("Yes! You see after you guessed a number if it's the wrong number, and lower than the actual number I picked, you can ignore that number AND all the numbers that come before it. The same goes if it is higher than the number I picked."),
            UserConversationMessage("Yeah, I don't even need to look at the rest of the numbers."),
            CompyConversationMessage("Correct!"),
            CompyConversationMessage("We can apply this principle to the documents in the mayor's office. If it is stored in order, we can do the higher or lower method, and eliminate half of the documents just like that!"),
            ReorderMessage(
                "Knowing what we know from the guessing game, how would we approach the problem of searching for a document now, assuming that the documents are stored in order?",
                [
                    "Get the document number and topic from the mayor",
                    "Start from the leftmost pile",
                    "Look for the number, and read the content of the document",
                    "Retrieve the document if it matches the number and topic given.",
                    "Otherwise, if it doesn't match, move on to the next document",
                    "Give the document to the mayor",
                    "Get the document number and topic from the mayor",
                    "Pick a starting position",
                    "Look at the document number written on the cover",
                    "Retrieve the document if it matches the number",
                    "Otherwise, if the document number is lower than the number being asked, ignore that document and all the numbers below it. If the document number is higher than the number being asked, ignore that document and all the numbers above it. Pick a starting position and repeat the steps above.",
                    "Give the document to the mayor"
                ],
                [
                    "Get the document number and topic from the mayor",
                    "Start from the leftmost pile",
                    "Look for the number, and read the content of the document",
                    "Retrieve the document if it matches the number and topic given.",
                    "Otherwise, if it doesn't match, move on to the next document",
                    "Give the document to the mayor",
                    "Get the document number and topic from the mayor",
                    "Pick a starting position",
                    "Look at the document number written on the cover",
                    "Retrieve the document if it matches the number",
                    "Otherwise, if the document number is lower than the number being asked, ignore that document and all the numbers below it. If the document number is higher than the number being asked, ignore that document and all the numbers above it. Pick a starting position and repeat the steps above.",
                    "Give the document to the mayor"
                ],
                CompyTrueMessage("You are absolutely correct! When performing a task, you have to do it in an orderly fashion, you cannot skip a step, or start from the bottom and work your way backward."),
                CompyFalseMessage("""
                That's not quite right, it seems that you have the order wrong. No worries, here is the correct order.
                - Get the document number and topic from the mayor
                - Pick a starting position
                - Look at the document number written on the cover
                - Retrieve the document if it matches the number
                - Otherwise, if the document number is lower than the number being asked, ignore that document and all the numbers below it. If the document number is higher, ignore that document and all the numbers above it. Pick a starting position and repeat the steps above.
                - Give the document to the mayor
                When performing a task, you have to do it in an orderly fashion, you cannot skip a step, or start from the bottom and work your way backward.
                """),
                false
            ),
            CompyConversationMessage("This is known as algorithms in computer science."),
            UserConversationMessage("Ah... so this thing also has a name?"),
            CompyConversationMessage("Yes! An algorithm is a procedure used for solving a problem, and act as a precise list of instruction that conducts specified actions step by step in an orderly fashion."),
            UserConversationMessage("How many algorithms exist out there?"),
            CompyConversationMessage("There are a lot of algorithms for different problems and use cases."),
            CompyConversationMessage("So far we've learned about search algorithms to solve search problems."),
            UserConversationMessage("Oh, can there be more than one algorithm to solve the same problem?"),
            CompyConversationMessage("Of course, even in just searching, we've learned 2 different algorithms. The first one that we learned a few days ago is known as the \"Linear Search Algorithm\", and the second one that we just completed is known as the \"Binary Search Algorithm\"."),
            UserConversationMessage("So they both solve the same problem but have different approaches?"),
            CompyConversationMessage("Correct!"),
            SingleChoiceMessage(
                "Out of the two search algorithms that we've learned so far, which one do you think is faster?",
                ["Linear Search Algorithm", "Binary Search Algorithm"],
                "Binary Search Algorithm",
                CompyTrueMessage("You're right! Binary search is much faster than linear search. This is because we can quickly eliminate all the numbers that do not fall into the right criteria (higher or lower in this case). We do not need to check each number one by one as we have to do in linear search."),
                CompyFalseMessage("Not really. Binary search is much faster than linear search. This is because we can quickly eliminate all the numbers that do not fall into the right criteria (higher or lower in this case). We do not need to check each number one by one as we have to do in linear search."),
                false
            ),
            CompyConversationMessage("Okay, so we've established that binary search is faster than linear search."),
            UserConversationMessage("But just how much faster?"),
            CompyConversationMessage("Well, it depends on where you pick your starting position."),
            SingleChoiceMessage(
                "Given a list of numbers, which starting position do you think is the best when performing a binary search?",
                [
                    "Start from the beginning of the list",
                    "Start from the middle of the list",
                    "Start from the end of the list"
                ],
                "Start from the middle of the list",
                CompyTrueMessage("Correct! It is faster to start from the middle of the list."),
                CompyFalseMessage("Incorrect, it is actually faster to start from the middle of the list."),
                false
            ),
            CompyConversationMessage("So why is that? Because by starting from the middle of the list, we essentially divide the list in half. Imagine if our list looks like this."),
            CompyConversationMessage("1, 2, 3, 4, 5, 6, 7, 8, 9, 10"),
            UserConversationMessage("Okay, got it."),
            CompyConversationMessage("If we started from the middle, which is 5, we have divided the list into two (halving it)."),
            CompyConversationMessage("1, 2, 3, 4 — 5 — 6, 7, 8, 9, 10"),
            UserConversationMessage("I see..."),
            CompyConversationMessage("If our number is lower than 5, we can ignore numbers 5 to 10, since our number cannot be there. We don't even need to know what numbers come after 5 since we know that they are going to be higher than 5."),
            CompyConversationMessage("1, 2, 3, 4"),
            UserConversationMessage("I get it, so on the other hand, if the number is higher than 5, we can ignore the number 1 to 5 because of the same reason."),
            UserConversationMessage("6, 7, 8, 9, 10"),
            CompyConversationMessage("That's right! Now, what if we started from the beginning, which is 1."),
            CompyConversationMessage("The number cannot be lower than 1 since it is the lowest number, so if the number is not 1, it must be higher than 1. Which is the number 2 to 10. We still have 9 numbers left to guess, since we only eliminate 1."),
            UserConversationMessage("Oh... So that is why we want to always pick a number in the middle. Since that will divide the list into halves and give us the most efficient and consistent elimination process."),
            CompyConversationMessage("Couldn't have said it better myself!"),
            UserConversationMessage("So back to the original question, how much faster is it?"),
            CompyConversationMessage("If the linear search is defined as a linear-time algorithm, binary search is defined as a logarithmic-time algorithm."),
            CompyConversationMessage("It is because if we had 1,000 numbers or documents, it would take us, in the worst-case log2 1,000 or around 10 tries. This is down to us halving the list in every run."), CompyConversationMessage("Congratulations! With this new technique, you've successfully sped up the process of retrieving a document even more!"),
            UserConversationMessage("That's amazing! I'm so excited to try it tomorrow!"), UserConversationMessage("But, uh oh! I almost forgot the documents in the mayor's office are still stored out of order, Compy..."),
            CompyConversationMessage("Don't worry! Remember what I said earlier about having different algorithms for different problems? There is a way to solve it too!"),
            UserConversationMessage("Wow! So... how can you reorder the documents?"),
            CompyConversationMessage("Let's meet again tomorrow to figure it out!"),
            NarrationMessage("To be continued in the next chapter"),
        ]),
        Chapter("Sort Problems", "Chapter_Problems", "", [
            NarrationMessage("The next day"),
            CompyConversationMessage("Well well well, if it isn't the busiest secretary in town."),
            CompyConversationMessage("Previously you have found a way to quickly search through the documents efficiently."),
            UserConversationMessage("Yes, but the catch is, that the documents must be stored in order."),
            UserConversationMessage("What a shame! If only the documents are stored properly as you needed, I can perform the binary search!"),
            CompyConversationMessage("But wait! You are a clever secretary! You know how to abstract and decompose problems, recognize patterns, and develop algorithms. Cool!"),
            CompyConversationMessage("So what if the documents are out of order? You just need to reorder them so they are stored in the proper order! But before that, you have to choose, in which order you want to store the documents."),
            UserConversationMessage("In which order?"),
            CompyConversationMessage("There are 2 different orders you can choose, ascending and descending order."),
            UserConversationMessage("Okay."),
            CompyConversationMessage("Ascending order is when you store the documents from the lowest numbers to the highest numbers. Whilst descending order is when you store the documents from the highest numbers to the lowest numbers."),
            SingleChoiceMessage(
                """
                1, 13, 45, 67, 98, 101
                This number is stored in descending order.
                """,
                ["True", "False"],
                "False",
                CompyTrueMessage("Yes! The number is stored in ascending order, since we store 1 first, which is the lowest number, and 101 last, which is the highest number."),
                CompyFalseMessage("No. The number is stored in ascending order, since we store 1 first, which is the lowest number, and 101 last, which is the highest number."),
                false
            ),
            SingleChoiceMessage(
                "Which one of these lists of numbers is stored in descending order?",
                ["67, 42, 31, 19, 17, 21, 10, 7", "8, 17, 53, 91, 102, 231, 451", "90, 75, 64, 43, 39, 21, 17, 5",],
                "90, 75, 64, 43, 39, 21, 17, 5",
                CompyTrueMessage("Correct! That list is stored in descending order, meaning we store the highest number first, and the lowest number last. The first list is stored out of order, and the second list is stored in ascending order."),
                CompyFalseMessage("Incorrect, the list that is stored in ascending order is the third list, meaning we store the highest number first, and the lowest number last. The first list is stored out of order, and the second list is stored in ascending order."),
                false
            ),
            CompyConversationMessage("Great! Now you know the order that you can choose to store the documents."),
            UserConversationMessage("For simplicity's sake, let's say that I want to store the documents in ascending order."),
            CompyConversationMessage("Alright. The next task is to reorder the documents in ascending order. But how do you go about doing this? Let's decompose!"),
            UserConversationMessage("Let's go! Take me through it, Compy."),
            CompyConversationMessage("You have many documents, but you only care about the numbers that are written on the cover of the documents themselves."),
            UserConversationMessage("Right."),
            CompyConversationMessage("So let's abstract these piles of documents into a list of numbers."),
            CompyConversationMessage("You also know that if you can develop an algorithm or the steps required to reorder a small number of numbers, for example, let's say 5 numbers, we can apply it to any amount of numbers. Which is known as pattern recognition."),
            UserConversationMessage("Of course."),
            CompyConversationMessage("So you take 5 random documents from the pile and get this list of numbers:"),
            CompyConversationMessage("76, 41, 111, 7, 12"),
            CompyConversationMessage("Now, let's start with deciding which number will be placed in the first spot. Which number is currently there?"),
            UserConversationMessage("The first spot is currently occupied by the number 76."),
            CompyConversationMessage("Yes, but you're not sure if it's where it's supposed to be. To find which number should take its place, you have to compare it to every other number."),
            SingleChoiceMessage(
                "The first comparison will be between the numbers on the first and second spots, which are 76 and 41. Since you want to have the numbers in ascending order, which one should be placed first out of the two?",
                ["76", "41"],
                "41",
                CompyTrueMessage("Correct! 41 is smaller than 76, therefore, if you want to store the number in ascending order, you have to store 41 before 76."),
                CompyFalseMessage("Incorrect, 41 is smaller than 76, therefore, if you want to store the number in ascending order, you have to store 41 before 76."),
                false
            ),
            CompyConversationMessage("From the first comparison, you know that the numbers needed to be swapped around. 41 should occupy the first spot, and 76 should occupy the second spot, where 41 was located before."),
            UserConversationMessage("Got it."),
            CompyConversationMessage("After the swap, the list should look like this"),
            CompyConversationMessage("41, 76, 111, 7, 12"),
            UserConversationMessage("But the list of numbers as a whole is still not in ascending order, Compy."),
            CompyConversationMessage("Correct, now you have to compare the number on the first spot to the rest of the spots."),
            SingleChoiceMessage(
                "Let's compare the number 41, with the number on the third spot, 111. And do the previous comparison again. Should we swap them this time?",
                ["Yes", "No"],
                "No",
                CompyTrueMessage("Correct, you don't need to swap them since 41 is already lower than 111."),
                CompyFalseMessage("Incorrect, you don't need to swap them since 41 is already lower than 111."),
                false
            ),
            SingleChoiceMessage(
                "Let's move on to the fourth spot. Comparing 41 and 7. Do the previous comparison again. Should we swap them this time?",
                ["Yes", "No"],
                "Yes",
                CompyTrueMessage("Correct, you need to swap them since 7 is lower than 41."),
                CompyFalseMessage("Incorrect, you need to swap them since 7 is lower than 41."),
                false
            ),
            CompyConversationMessage("After that, the list looks something like this."),
            CompyConversationMessage("7, 76, 111, 41, 12"),
            SingleChoiceMessage(
                "Let's move on to the fifth and last spot. Comparing 7 and 12. Do the previous comparison again. Should we swap them this time?",
                ["Yes", "No"],
                "No",
                CompyTrueMessage("Correct, you don't need to swap them since 7 is lower than 12."),
                CompyFalseMessage("Incorrect, you don't need to swap them since 7 is lower than 12."),
                false
            ),
            CompyConversationMessage("After the first run, the list looks like this."),
            CompyConversationMessage("7, 76, 111, 41, 12"),
            UserConversationMessage("Alright!"),
            CompyConversationMessage("As you can see, you had pinpointed that the number on the first spot should be 7."),
            UserConversationMessage("But the rest of the numbers are still scattered."),
            CompyConversationMessage("So the next order of business is deciding which number goes into the second spot."),
            UserConversationMessage("How do I go about doing that?"),
            CompyConversationMessage("Since you already have a way to find out which number should be on the first spot, you can apply the same technique to find out the numbers for the rest of the spots. The only thing that you need to change is to change the starting point."),
            UserConversationMessage("You're right!"),
            CompyConversationMessage("For deciding which number should be located on the second spot, you need to start from the second spot onward, the same goes on for the third, fourth, and fifth spots."),
            SingleChoiceMessage(
                "This is known as...",
                ["Algorithm", "Pattern recognition", "Decomposition", "Abstraction"],
                "Pattern recognition",
                CompyTrueMessage("Very good! This is known as pattern recognition. Since the steps it takes to solve the first spot and the rest of the spots are the same, there is a repetition of the pattern."),
                CompyFalseMessage("Unfortunately, you're not quite right. This is known as pattern recognition. Since the steps it takes to solve the first spot and the rest of the spots are the same, there is a repetition of the pattern."),
                false
            ),
            CompyConversationMessage("After the second run, the list would look like this."),
            CompyConversationMessage("7, 12, 111, 76, 41"),
            CompyConversationMessage("After the third run, the list would look like this."),
            CompyConversationMessage("7, 12, 41, 111, 76"),
            CompyConversationMessage("After the fourth run, the list would look like this."),
            CompyConversationMessage("7, 12, 41, 76, 111"),
            CompyConversationMessage("After the fifth run, the list would look like this."),
            CompyConversationMessage("7, 12, 41, 76, 111"),
            UserConversationMessage("Hey, it’s already in the correct order now!"),
            CompyConversationMessage("Cool right?"),
            UserConversationMessage("Does this have a name also?"),
            CompyConversationMessage("Oh, that’s right, I almost forgot."),
            CompyConversationMessage("This algorithm in which you can reorder the list of numbers in ascending or descending order is known as the sorting algorithm."),
            CompyConversationMessage("You can also apply this to many more things, for example, the alphabet."),
            UserConversationMessage("Are there more sorting algorithms out there?"),
            CompyConversationMessage("Of course, %@! Just like search algorithms, there are many variations that you can do to solve the sorting problems. This particular sort algorithm that we used is known as the bubble sort."),
            UserConversationMessage("Bubble sort… what a funny name."),
            CompyConversationMessage("Hahaha, I guess it is!"),
            CompyConversationMessage("If you’re interested in the performance of bubble sort. You need to see how many comparisons are performed."),
            CompyConversationMessage("Since you need to compare each number with every other number in the list, you do a number-squared of comparisons. Given the previous list of 5 numbers, you need to do 5^2 comparisons in the worst case or 25 comparisons in total."),
            UserConversationMessage("I see, so just by adding 1 more number, the comparison grows to 6^2 or 36."),
            CompyConversationMessage("Yes, this means that the algorithm works in exponential time since the number of comparisons grows exponentially."),
            UserConversationMessage("Ah… that’s a lot of additional comparisons just by adding 1 more number though."),
            CompyConversationMessage("""
            I know right! Of course, there is still room for improvement. For example, bubble sort is a very slow way of sorting a list of numbers. To further increase your performance and be a better secretary, you might want to look into:

            -   Radix Sort
            -   Merge Sort
            -   Quick Sort
            """),
            CompyConversationMessage("There you go! All done! Now you can sort and search through the documents very quickly."),
            UserConversationMessage("Thanks, Compy!"),
            CompyConversationMessage("You’re very welcome, %@!")
        ])
    ]),
    Story("Supermarket", "Monthly groceries shopping time!",  "Story_Logo_Supermarket",  "Story_Background_Supermarket", [
        Chapter("Monthly Groceries", "Chapter_Monthly", "Find The Banana",
        [
            CompyConversationMessage("What day is it today?"),
            UserConversationMessage("It's Sunday"),
            CompyConversationMessage("First Sunday in the month! You know what do you have to do, right?"),
            UserConversationMessage("Oh you're right. Monthly groceries shopping."),
            CompyConversationMessage("Have you made a list of what you should buy?"),
            UserConversationMessage("Not yet ☹️"),
            CompyConversationMessage("Don't worry! You have me. I will help you to make a list"),
            MultiSelectMessage(
                "Which one do you think it's better?",
                [
                    "Sugar",
                    "Cooking oil",
                    "Lipstick",
                    "Cereals",
                    "Milk",
                    "Jewelry",
                    "Egg",
                    "Banana",
                    "Flowers",
                    "Nugget",
                    "Instant noodle",
                    "Mirror",
                    "Meat",
                    "Fish",
                    "Powerbank",
                ],
                [
                    "Sugar",
                    "Cooking oil",
                    "Cereals",
                    "Milk",
                    "Egg",
                    "Banana",
                    "Nugget",
                    "Instant noodle",
                    "Meat",
                    "Fish",
                ],
                CompyTrueMessage("Wow, that's correct! You already know which things that you should buy when you do monthly groceries shopping. You know what, you have done one activity of computational thinking, abstraction. You focus on the idea and information, ignoring irrelevant details. You didn't pick unnecessary things that you shouldn't buy in monthly groceries shopping."),
                CompyFalseMessage("Hmm it seems you pick the wrong one. Try to focus on the idea and information. Things you should buy in monthly groceries shopping. Do you think it's necessary to buy Flowers, Powerbank, Mirror, Lipstick, Jewelry when you do monthly groceries shopping? I don't think so. We don't always restock those things every month, right? But, that's okay! Now you know that you should ignoring irrelevant details and try to focus on the key information."), false),
                CompyConversationMessage("You have made the list! It's pretty easy, isn't it?"),
                UserConversationMessage("Yes. It helps me to didn't buy unnecessary things too."),
                CompyConversationMessage("Yep. You should focus on the specific things and ignoring irrelevant details."),
                UserConversationMessage("You are right. Sometimes when I got too broad information, it's pretty hard to narrowing the thing."),
                CompyConversationMessage("Of course~ Focus is the key."),
                CompyConversationMessage("We are going to supermarket today, right?"),
                UserConversationMessage("Right. Let's go!"),
                CompyConversationMessage("Wait. You sure you didn't forget something?"),
                UserConversationMessage("I don't think so"),
                CompyConversationMessage("You didn't bring anything?"),
                UserConversationMessage("What should I bring? I can just bring myself and my phone and all done."),
                CompyConversationMessage("How do you bring your groceries later?"),
                UserConversationMessage("Can't I just bring them with my hands?"),
                CompyConversationMessage("Really? You sure you can handle it?"),
                SingleChoiceMessage(
                    "Which one do you think it's better?",
                    ["Bring the shopping bag", "Bring the shopping bag", "Just bring the groceries with bare hands",],
                    "Bring the shopping bag",
                    CompyTrueMessage("That's right! You didn't want your hands bothered with many things, do you? We just have two hands, how we can handle ten items in our hands. We can solve the problem by bring the shopping bag. With the shopping bag, we can just put all of the items together and easily packed. Unconsciously, you have solved the problem with decomposition, it's when you breaking down a complex problem into smaller part to carry it."),
                    CompyFalseMessage("Are you sure you can bring the ten items just with your bare hands? Imagine you bring the egg, apple, milk, cereals with only one hand. It seems troublesome. You can put the groceries items in the shopping bag and it's simply packed, problem solved. Your hands won't be bothered with many things."),
                    false
                ),
                CompyConversationMessage("That's good! Now don't forget to bring your shopping bag."),
                UserConversationMessage("Ay-ay, Captain! Thank you for helping me."),
                CompyConversationMessage("Anytime, %@! You also did a great job too~"),
                CompyConversationMessage("Now, we have done two activities with different concept of computational thinking."),
                CompyConversationMessage("Can you differentiate it?"),
                SingleChoiceMessage(
                    "When you want to solve the problem, you must focus on key information. That is the concept of?",
                    ["Decomposition", "Abstraction"],
                    "Abstraction",
                    CompyTrueMessage("Good job! You can differentiate between abstraction and decomposition. Abstraction is when we should focus on information and ignoring irrelevant details, while decomposition is we can breaking down the problem into smaller, manageable parts. I'm really proud of you. Keep it up! 🤩"),
                    CompyFalseMessage("The correct answer is abstraction. Abstraction is when we should focus on information and ignoring irrelevant details, while decomposition is we can breaking down the problem into smaller, manageable parts. It's okay, now try to plant that concept so you can go further!"),
                    false
                ),
                UserConversationMessage("Thank you so much, Compy. Now I know the differences between abstraction and decomposition."),
                CompyConversationMessage("Don't mention it. Okay now bring your shopping bag and let's go to the supermarket!"),
                UserConversationMessage("Already! Eh, should I only bring one shopping bag?"),
                CompyConversationMessage("Yes. I think one large-sized shopping bag could handle ten items that you want to buy."),
                UserConversationMessage("But, there's a problem"),
                CompyConversationMessage("What is the problem?"),
                UserConversationMessage("Meat and fish are smelly. I don't want the other stuffs mixed with their smells."),
                CompyConversationMessage("Hmmm.. You're right"),
                UserConversationMessage("What should I do then?"),
                SingleChoiceMessage(
                        "What will you do to solve that problem?",
                        ["Bring seperate shopping bag special for meat and fish", "Just bring one shopping bag, I can carry the meat and fish with my bare hands.", "I didn't need shopping bag. I can use the trolley and move my things one by one to my car so it's seperated already."],
                        "Bring seperate shopping bag special for meat and fish",
                        CompyTrueMessage("Couldn't agree more! We should bring seperate shopping bag special only for meat and fish. With that, we can prevent the smells from spreading. You just breaked down the complex problem into manageable parts. Do you remember what computational thinking's concept it is? Yep, that's decomposition~"),
                        CompyFalseMessage("I don't think so. Isn't your choice will make more problem? It will be troublesome for you. Remember, we are here to solve the problem with the most simple way. Bring the seperate shopping bag special for meat and fish is the most effective way. You can still simply handled it with that."),
                        false),
                    CompyConversationMessage("You are really great, %@. "),
                    UserConversationMessage("I can't do that without your help, Compy."),
                    CompyConversationMessage("No, it's not because of me. It's because of you. You are the one who solved the problem."),
                    UserConversationMessage("So we can go to supermarket now?"),
                    CompyConversationMessage("Sure. But, before we go to the supermarket, can we review it one more time?"),
                    UserConversationMessage("No worries. Bring me more question, please."),
                    SingleChoiceMessage(
                        "When you want to cook fried noodle, your mind will be automatically know that you should prepare ingredients to make it. There will be instant noodle, egg, cooking oil, and nugget. That's why you go to supermarket to buy those things. This is one example of the concept of?",
                        ["Decomposition", "Abstraction"],
                        "Decomposition",
                        CompyTrueMessage("Congratulations! You passed this chapter smoothly. You are right, that is the concept of decomposition. It can be seen from the way you breaked down the things that will be ingredients to cook fried noodle."),
                        CompyFalseMessage("That's the concept of decomposition, %@. Remember, Abstraction is when we should focus on information and ignoring irrelevant details. While decomposition is we can breaking down the problem into smaller manageable parts."), false),
        ]),
        Chapter("Find The Banana", "Chapter_Banana", "Pay Lane", [
            NarrationMessage("You go to supermarket with your car. Now, you are already here, at the supermarket. Let's park your car and get ready to enter the supermarket."),
            CompyConversationMessage("Let's park your car!"),
            UserConversationMessage("Working on it!"),
            CompyConversationMessage(" Hey. %@. Everytime you park your car, you've never been in trouble for illegal parking, have you?"),
            UserConversationMessage("Of course. I am an obedient citizen."),
            CompyConversationMessage("Good, good! That means you can always find the parking area."),
            UserConversationMessage("I am. I'm always neat in parking my car."),
            CompyConversationMessage("How can you always find the parking area even though that was your first time visit the place?"),
            UserConversationMessage("Oh, you are right. Do we call it intuition?"),
            CompyConversationMessage("No. That's not intuition."),
            UserConversationMessage("So, what is it then?"),
            SingleChoiceMessage(
                "How do you think people can find the parking area even though it was first time they visit the place?",
                ["They are using intuition", "People see the pattern, when there's a bunch of cars with engine off lined up in specific area, that's definitely the parking area.", "They just park it anywhere in available space without thinking anything more."],
                "People see the pattern, when there's a bunch of cars with engine off lined up in specific area, that's definitely the parking area.",
                CompyTrueMessage("You're correct! Subconsciously, we can tell if it's a parking lot or not by looking around whether there's car parked there or not. How can we know the car is parked? Just look at the pattern, when there's a bunch of cars with engine off lined up in specific area, that's definitely the parking area. It's called pattern recognition. We can recognize something just by looking at the pattern"),
                CompyFalseMessage("Your answer is not correct. We park our car in parking area. How can we know that's a parking area? Because we see the pattern. Pattern that there's a bunch of cars with engine off lined up in specific area. When we recognised the pattern, we know that is a parking area. It's called pattern recognition."),
                false),
            CompyConversationMessage("The supermarket is super huge"),
            UserConversationMessage("Yeah we can find everything here. That's why it's called SUPERmarket"),
            CompyConversationMessage("Do you have enough time to search all of the stuffs that you want to buy?"),
            UserConversationMessage("I have problem with that. I need save time because in an hour, I have an online meeting."),
            CompyConversationMessage("That's very tight."),
            UserConversationMessage("Can you help me, Compy?"),
            CompyConversationMessage("Let's take a look around to save the time so we can get the stuffs quickly."),
            UserConversationMessage("Can we just ask the employee where's the stuff that we need?"),
            CompyConversationMessage("They just tell us the direction, without we even know which rack"),
            UserConversationMessage("So what should I do?"),
            CompyConversationMessage("Did you notice something the sign in the top of the rack?"),
            UserConversationMessage("I see it!"),
            SingleChoiceMessage(
                "When we notice that there's sign in the top of the rack, what concept of this?",
                ["Abstraction", "Decomposition", "Pattern recognition"],
                "Pattern recognition",
                CompyTrueMessage("Goood job~ Yes, that's called pattern recognition. The sign help us to find the stuff that we need from its category by the section. We can find the similarities and repition on that."),
                CompyFalseMessage("Tet-net! The correct answer is pattern recognition.  The sign help us to find the stuff that we need from its category by the section. We can find the similarities and repition on that."),
                false),
            CompyConversationMessage("Let's see what should we buy from the list that we have made before."),
            UserConversationMessage("Sugar, Cooking oil, Cereals, Milk, Egg, Banana, Nugget, Instant noodle, Meat, Fish"),
            CompyConversationMessage("Fruit in section A, breakfast needs in section B, frozen food in section C, meat and fish in section D, groceries in section E"),
            CompyConversationMessage("Section A is the nearest to our start point, while section E is the further."),
            UserConversationMessage("But, I need to put fresh stuffs that out from refrigerator as the last item that we took"),
            UserConversationMessage("So at least they don't stay out of the fridge for too long"),
            CompyConversationMessage("Let's arrange where section that we should go first"),
            ReorderMessage(
                "Let's arrange the item! Don't forget to pay attention to the order of sections", [
                    "Sugar, cooking oil, instant noodle, egg",
                    "Banana",
                    "Meat and fish",
                    "Nugget",
                    "Cereals, milk"
                ],
                [
                    "Banana",
                    "Cereals, milk",
                    "Sugar, cooking oil, instant noodle, egg",
                    "Nugget",
                    "Meat and fish"
                ],
                CompyTrueMessage("Great job! This question is layered question. If you pay attention. Compy explained that the sections are sequential start from section A until section E. But, you must put fresh stuffs that out from refrigerator as the last item that we took. Nugget, meat and fish is the frozen item, right? So, why nugget first? Because nugget in section C, while meat and fish in section D. "),
                CompyFalseMessage("""
                That's not quite right but that is okay! This question is layered question. If you pay attention. Compy explained that the sections are sequential start from section A until section E. But, you must put fresh stuffs that out from refrigerator as the last item that we took. Nugget, meat and fish is the frozen item, right? So, why nugget first? Because nugget in section C, while meat and fish in section D. So the correct order is
                - Banana
                - Cereals, milk
                - Sugar, cooking oil, instant noodle, egg
                - Nugget
                - Meat and fish"
                """),
                false
            ),
            UserConversationMessage("Let's take a look to the list"),
            CompyConversationMessage("Didn't we already arrange it?"),
            UserConversationMessage("Oh, you are right. Okay let's find the banana"),
            SingleChoiceMessage(
                "I should go to fruit section to find the banana",
                ["True", "False"],
                "True",
                CompyTrueMessage("Of course~ We know the pattern that section is divided by its category. So we should go to fruit section to find the banana."),
                CompyFalseMessage("Hmm I don't think so. We should go to fruit section to find the banana, do we?"),
                false),
            CompyConversationMessage("Here we are in fruit section. Let's find the banana"),
            UserConversationMessage("Compy, isn't bananas spoil easily because we can't store them in the refrigerator?"),
            CompyConversationMessage("Yep. So we must find the fit banana"),
            UserConversationMessage("But, I want to save time and energy because the meeting will be start in minutes."),
            SingleChoiceMessage(
                "What the most effective what that should I do to save time and energy but still get banana with good condition?",
                ["I should choose from the bottom of the rack", "I can choose banana that placed in the top. I can only use my eyes to skimming which banana that in good condition"],
                "I can choose banana that placed in the top. I can only use my eyes to skimming which banana that in good condition",
                CompyTrueMessage("Great! When choosing banana, we will choose that placed in the top. It will be wasting time a lot if we must pick the banana from the bottom of the rack. The top banana is the last banana to be placed. So, the top banana is the most fresh one, right? That's the concept of Stack, Last in First Out. The last banana that be placed, is the first Banana that we will take."),
                CompyFalseMessage("Are you sure you will choose them from the bottom of the rack? Isn't it will be wasting time? When choosing banana, we will choose that placed in the top. It will be wasting time a lot if we must pick the banana from the bottom of the rack. The top banana is the last banana to be placed. So, the top banana is the most fresh one, right? That's the concept of Stack, Last in First Out. The last banana that be placed, is the first Banana that we will take."),
                false),
        ]),
        Chapter("Pay Lane", "Chapter_PayLine", "", [
            NarrationMessage("Congratulations! You have done took the stuffs that you need to buy. Now, let's pay it in the cashier"),
            CompyConversationMessage("Wow, that's a lot of cashier here"),
            CompyConversationMessage("The cashier also divided by the category of payment method"),
            UserConversationMessage("Really? So we couldn't do the any cashier that we want?"),
            CompyConversationMessage("Yep. Cashier 1-3 for cash payment. Cashier 4-15 for cashless payment"),
            CompyConversationMessage("We should decide what payment method that we want to use"),
            CompyConversationMessage("What method do you want to use for paying?"),
            UserConversationMessage("Credit card"),
            SingleChoiceMessage(
                "You want to pay with credit card, where is the cashier that you should ignore?",
                ["Cashier 1-3", "Cashier 4-15"],
                "Cashier 1-3",
                CompyTrueMessage("You are absolutely correct. You want to pay it with credit card, that means cashless payment method. You should focus on that information and go to cashier 4-15. While cashier 1-3 is for cash method. That means, you should ignore cashier 1-3 because that is irrelevant details. This is concept for Abstraction."),
                CompyFalseMessage("That's not right answer. Don't forget to read the details in the question and conversations. You want to pay it with credit card, that means cashless payment method. You should focus on that information and go to cashier 4-15. While cashier 1-3 is for cash method. That means, you should ignore cashier 1-3 because that is irrelevant details. This is concept for Abstraction."),
                false
            ),
            CompyConversationMessage("Great. Now that's a lot of queue and looks so crowded"),
            UserConversationMessage("Huhu, my meeting will start in 15 minutes"),
            UserConversationMessage(" I want to pay it as soon as possible"),
            UserConversationMessage("Can you help me, Compy?"),
            CompyConversationMessage("With my pleasure. Now let's breaking it down first"),
            CompyConversationMessage("Lane 5, 7, 15 has only 2 people in the queue."),
            CompyConversationMessage("Lane 4, 13, 14 has 3 peoples."),
            CompyConversationMessage("Lane 8, 11, 12 has 4 peoples."),
            CompyConversationMessage("Lane 4, 6, 9, 10 has 5 peoples. "),
            UserConversationMessage("Why do we have to count the number of people in the lane?"),
            CompyConversationMessage("Because we have to queue"),
            CompyConversationMessage("The first people who get in the lane, will be the first people that out from the lane"),
            UserConversationMessage("I see. The fewer the better?"),
            UserConversationMessage("So we should pick between lane 5, 7, and 15."),
            CompyConversationMessage("Great. Now, let's focus on the queue."),
            SingleChoiceMessage(
                "Where cashier that you should to go to? The case is lane 5 has two people with 3 trolley. Lane 7 has two people with 1 trolley and 1 basket. Lane 15 has 2 trolley and 1 basket.",
                ["Lane 5", "Lane 7", "Lane 15"],
                "Lane 7",
                CompyTrueMessage("Excellent! We just breaked it down and see lane 7 is the shortest because only 2 people left with 1 trolley and 1 basket. As we know, when people have trolley, it has more items than people with the basket. So the lane with 1 trolley and 1 basket is probably has the less time to wait than other lane. When breaking it down to calculate which lane is short, you just doing decomposition activity in computational thinking."),
                CompyFalseMessage("The correct answer is Lane 7. We just breaked it down and see lane 7 is the shortest because only 2 people left with 1 trolley and 1 basket. As we know, when people have trolley, it has more items than people with the basket. So the lane with 1 trolley and 1 basket is probably has the less time to wait than other lane. When breaking it down to calculate which lane is short, you just doing decomposition activity in computational thinking."),
                false
            ),
            CompyConversationMessage("Finally we got the shortest lane!"),
            UserConversationMessage("Thank you, Compy, for helping me again."),
            CompyConversationMessage("I'm happy to help, %@."),
            UserConversationMessage("Compy, Why do we have to queue to pay it?"),
            CompyConversationMessage("They can't do the payment if there is more than one process done concurrently"),
            CompyConversationMessage("Because that's how the data works. We can only do it one by one sequentially."),
            CompyConversationMessage("In the programming, it's called Queue."),
            CompyConversationMessage("Queue have first in first out system"),
            CompyConversationMessage("Enqueue when adding data to the tail, dequeue when realising data from the head."),
            CompyConversationMessage("The first person entering the lane, will be the first out from the lane."),
            SingleChoiceMessage(
                "What Queue's operation concept that you use when you ENTERING the cashier lane?",
                ["Enqueue", "Dequeue"],
                "Enqueue",
                CompyTrueMessage("Yep that's right! Enqueue is entering the data. Dequeue is relased the data from the queue. When you entering the lane it means you are doing enqueue. While dequeue is when you are get out from the lane."),
                CompyFalseMessage("The correct answer is Enqueue. Enqueue is entering the data. Dequeue is relased the data from the queue. When you entering the lane it means you are doing enqueue. While dequeue is when you are get out from the lane."),
                false
            ),
            CompyConversationMessage("Now you have learned about queue and stack"),
            CompyConversationMessage("Queue is when you are in queue lane, first who got in the lane will be the first that will be out from the lane"),
            UserConversationMessage("How about another example about Stack?"),
            CompyConversationMessage("Stack is when you are doing dishes. When  you pile up the dishes to wash, you will take the top plate first to wash it"),
            CompyConversationMessage("You won't take the bottom one first because it will be troublesome"),
            CompyConversationMessage("Basically Stack is about who got in first, will be the last out"),
            UserConversationMessage("So Queue is First In First Out, while Stack is Last In First Out?"),
            CompyConversationMessage("You got it right!"),
            SingleChoiceMessage(
                "When you put your stuffs to the cashier desk, you will pick the top item first from your trolley. What algorithm concept that we use here?",
                ["Stack", "Queue", "Sorting", "Searching"],
                "Stack",
                CompyTrueMessage("You are totally correct! If we take a look more, the concept is Last In First Out. The last item that we put in our trolley, will be the first item we take to the cashier desk. So concept that we use aboce is Stack."),
                CompyFalseMessage("That's not right. If we take a look more, the concept is Last In First Out. The last item that we put in our trolley, will be the first item we take to the cashier desk. So concept that we use aboce is Stack."),
                false
            ),
            CompyConversationMessage("Good job, %@! Now you know about Stack and Queue algorithm concept."),
            CompyConversationMessage("It's your turn now. Let's wait cashier to scan your stuffs"),
            CompyConversationMessage("We should move the stuff that have been scanned to your shopping bag"),
            UserConversationMessage("On it!"),
            CompyConversationMessage("Okay now for the last activity to remember and put a deeper foundation for you"),
            SingleChoiceMessage(
                "When you put your stuffs that have been scanned in cashier to your shopping bag, you will move the first item that already scanned first. What algorithm concept that we use here?",
                ["Stack", "Queue", "Sorting", "Searching"],
                "Queue",
                CompyTrueMessage("Extremely correct! I'm really proud of you. Yes, it's true. It's the opposite side of when we put the groceries earlier, which is a stack activity. Now when we put the stuffs in the shopping bag, the activity will turn into a Queue. The concept of First In First Out."),
                CompyFalseMessage("Extremely correct! I'm really proud of you. Yes, it's true. It's the opposite side of when we put the groceries earlier, which is a stack activity. Now when we put the stuffs in the shopping bag, the activity will turn into a Queue. The concept of First In First Out."),
                false
            ),
        ])
    ])
]
    
    static func findStory(title: String) -> Story {
        return stories.first(where: {$0.title == title}) ?? Story("", "", "", "", [Chapter]())
    }
    
    static func findChapter(story: Story, chapterTitle: String) -> Chapter {
        return story.chapters.first(where: {
            $0.title == chapterTitle
        }) ?? Chapter("", "", "", [Message]())
    }
}
