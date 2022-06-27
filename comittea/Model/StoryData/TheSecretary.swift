//
//  TheSecretary.swift
//  comittea
//
//  Created by Atyanta Awesa Pambharu on 27/06/22.
//

import Foundation

struct TheSecretary: Storiable {
    let story = Story("The Secretary", "The mayor is a very busy man, he has a lot of responsibilities. As time goes on, his workload seems to keep increasing. He decided that he needed help and hired you as his secretary. As a secretary, you're responsible for managing the mayor's schedule, setting up meetings, retrieving documents, etc.", "Story_Logo_Secretary", "Story_Background_The Secretary", [
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
    ])
}
