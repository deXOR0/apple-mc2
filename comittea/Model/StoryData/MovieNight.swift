//
//  MovieNight.swift
//  comittea
//
//  Created by Atyanta Awesa Pambharu on 27/06/22.
//

import Foundation

struct MovieNight: Storiable {
    let story = Story("Movie Night", """
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
                "Select the tasks that needs to be done from the objective: “Making Sandwich“",
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
                    "Only look at the genre part of the movie list, and therefore eliminating movies without action in it's genre.",
                ],
                "Only look at the genre part of the movie list, and therefore eliminating movies without action in it's genre.",
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
            CompyConversationMessage("Did you notice what we just did? We have learned what programmers called pattern recognition."),
            CompyConversationMessage("For example, when deciding which genre to watch, we notice some patterns that relates to action movie, which is guns, explosives, and fights. This is what we're used to seeing when watching action movies."),
            CompyConversationMessage("Another example is when we buy the tickets in bulk rather than let everyone buy their own tickets. We recognized that there is a repeating pattern to buy one ticket for each person in the group. Not only is this less time consuming, it also meant that they can seat together without worrying if any of the seat might be taken by someone else."),
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
            CompyConversationMessage("The headwaiter asked you what type of drink did you gave him, this is to ensure they can give the governor the appropriate snack that compliments the drink."),
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
            CompyConversationMessage("Then, the headwaiter asked you to bring the appropriate snacks to the governor."),
            CompyConversationMessage("Now you need to look for the governors table."),
            CompyConversationMessage("Each table has been assigned a card that contains a number and a name that corresponds to the person sitting on the table."),
            CompyConversationMessage("What is the fastest way to look for the governor through out the room?"),
            SingleChoiceMessage(
                "Which of these is the fastest way to find the governor?",
                [
                    "Ask each of the table who they are",
                    "Look for the governor's number on each table's card",
                    "Look for the name of the governor on each table"
                ],
                "Look for the governor's number on each table's card",
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
            CompyConversationMessage("In what way will you seat them %@, together or separated?"),
            SingleChoiceMessage(
                "How will you seat everyone inside the cinema?",
                [
                    "Seat everyone in any available seats, even if some group member might seat separated from each other.",
                    "Seat everyone together so that nobody is left separated."
                ],
                "Seat everyone together so that nobody is left separated.",
                CompyTrueMessage("Great idea! We certainly wouldn't want anyone to be left separated."),
                CompyFalseMessage("Some of your friends will be seating by themselves. We wouldn't want anyone to be left out."),
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
            CompyConversationMessage("The way computer store array in its memory is that it needs to store each item adjacent to each other, and each will be given their own address in the memory, similar to how we managed to buy the tickets and each of us get assigned our own seat number for example, C5, B7, and so on."),
            CompyConversationMessage("In an array, each item will be assigned an index, starting from 0 for the first item, 1 for the next item, and so on."),
            CompyConversationMessage("By doing this, it will be easier for the computer to look for the items as it only needs to know the address of the first item, and when it needs to find the other item, it will only need to add the index of the item itself."),
            CompyConversationMessage("Let's see what other example we can think of to understand more about this concept."),
            CompyConversationMessage("Right now you're inside your bedroom, trying to clean and tidy things up, until you notice that there were many books of novel series that has been lying on the floor. Each of them were related to each other."),
            CompyConversationMessage("You have a book shelf with some part of it getting occupied by another book that you own."),
            CompyConversationMessage("Now let's try to tidy the books."),
            SingleChoiceMessage(
                "How will you go about and tidy the novel series?",
                [
                    "Put each of the novel in any available place",
                    "Group the novel in the order of the chapter, and place them in a group inside a blank space that will fit them all."
                ],
                    "Group the novel in the order of the chapter, and place them in a group inside a blank space that will fit them all.",
                CompyTrueMessage("You are absolutely correct. We have to put the books in a group based on the order of the chapter because every chapter is related to one another."),
                CompyFalseMessage("That's not the way to do it. Each novels are related to each other. That is why we need to put the books in a group based on the order of the chapter."),
                false
            ),
            CompyConversationMessage("We've finished putting the books back in the shelf. Then a few days later, you decided to continue reading the same novel series, this time you would want to read chapter 5."),
            CompyConversationMessage("You know exactly where you last put the first chapter of the novel series."),
            CompyConversationMessage("How will you look for the novel?"),
            SingleChoiceMessage(
                "In what way will you try to look for the mentioned novel?",
                [
                    "Look for the first chapter of the novel series, and then proceed to count up from there in order to find the 5th chapter.",
                    "Start to look from the top of the book shelf all the way down to the bottom of it until you find the right novel book."
                ],
                "Look for the first chapter of the novel series, and then proceed to count up from there in order to find the 5th chapter.",
                CompyTrueMessage("That's what I'm talking about. Good job on finding the book. Since we put the novel series in a group and ordered it based on the chapter days before, we know that it will be located near the first one. From then onward we only need to count up to the 5th chapter."),
                CompyFalseMessage("That is not the most efficient way of looking for the book. Since we put the novel series in a group and ordered it based on the chapter days before, we know that it will be located near the first one. From then onward we only need to count up to the 5th chapter."),
                false
            ),
        ])
    ])
}
