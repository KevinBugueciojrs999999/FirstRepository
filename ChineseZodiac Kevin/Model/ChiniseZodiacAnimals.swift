//
//  ChiniseZodiacAnimals.swift
//  ChineseZodiac Kevin
//
//  Created by user164197 on 19/02/2020.
//  Copyright © 2020 Kevin Buguecio. All rights reserved.
//

import Foundation
import UIKit

struct Horoscope {
    
    // MARK: ANIMAL DESCRIPTIONS LOGIC
    
    var animalsTypes: AnimalType?
    
    enum AnimalType {
        case rat, ox, tiger, rabbit, dragon, snake, horse, goat, monkey, rooster, dog, pig
        
        
        var title: String {
            switch self {
            case .rat: return "Rat 🐁"
            case .ox: return "Ox 🐂"
            case .tiger: return "Tiger 🐅"
            case .rabbit: return "Rabbit 🐇"
            case .dragon: return "Dragon 🐉"
            case .snake: return "Snake 🐍"
            case .horse: return "Horse 🐎"
            case .goat: return "Goat 🐐"
            case .monkey: return "Monkey 🐒"
            case .rooster: return "Rooster 🐓"
            case .dog: return "Dog 🐕"
            case .pig: return "Pig 🐖"
            }
        }
        
        var image: String {
            switch self {
            case .rat:
                return "rsz_1rata"
            case .ox:
                return "Toro"
            case .tiger:
                return "Tigre"
            case .rabbit:
                return "Conejo"
            case .dragon:
                return "Dragon"
            case .snake:
                return "Serpiente"
            case .horse:
                return  "Caballo"
            case .goat:
                return  "Cabra"
            case .monkey:
                return "Mono"
            case .rooster:
                return "Pollo"
            case .dog:
                return "Perro"
            case .pig:
                return "Cerdo"
            }
        }
        
        var years: String {
            switch self {
            case .rat:
                return "From 19/02/1996 to 07/02/1997 (D/M/Y)"
            case .ox:
                return "From 08/02/1997 to 27/01/1998 (D/M/Y)"
            case .tiger:
                return "From 28/01/1998 to 15/02/1999 (D/M/Y)"
            case .rabbit:
                return "From 16/02/1999 to 04/02/2000 (D/M/Y)"
            case .dragon:
                return "From 05/02/2000 to 23/01/2001 (D/M/Y)"
            case .snake:
                return "From 06/02/1989 to 26/01/1990 (D/M/Y)"
            case .horse:
                return "From 27/01/1990 to 14/02/1991 (D/M/Y)"
            case .goat:
                return "From 15/02/1991 to 03/02/1992 (D/M/Y)"
            case .monkey:
                return "From 04/02/1992 to 22/01/1993 (D/M/Y)"
            case .rooster:
                return "From 23/01/1993 to 09/02/1994 (D/M/Y)"
            case .dog:
                return "From 10/02/1994 to 30/01/1995 (D/M/Y)"
            case .pig:
                return "From 31/01/1995 to 18/02/1996 (D/M/Y)"
            }
        }
        var description: String {
            switch self {
            case .rat:
                return "Optimistic and energetic, people born in the Rat year are likable by all. They are sensitive to other’s emotions but are stubborn with your opinion. Their personality is kind, but due to weak communication skills, their words may seem impolite and rude. On the financial side, they like saving and can be stingy. However, their love for hoarding will sometimes cause them to waste money on unnecessary things."
            case .ox:
                return "Oxen are honest and earnest. They are low key and never look for praise or to be the center of attention. This often hides their talent, but they’ll gain recognition through their hard work. They believe that everyone should do what’s asked for them and stay within their bounds. Though they are kind, it’s difficult for them to understand persuasion using pathos. Rarely losing your temper, they think logically and make great leaders."
            case .tiger:
                return "Tigers are kind and benevolent. Animals, jazz music or other things that call for imagination are good for them. They rarely feel tired and have rich emotions. Sometimes though, they make brash decisions and are hard to control. But no matter how many difficulties or obstacles they face, they will never give up. In the end, Tigers live an average life—there are times of joy, sadness and sometimes disappointment."
            case .rabbit:
                return "To outsiders, the Rabbit’s kindness may make them seem soft and weak. In truth, the Rabbit’s quiet personality hides their confidence and strength. They are steadily moving towards their goal, no matter what negativity the others give them. With their good reasoning skills and attention to detail, they make great scholars. They are socializers with an attractive aura. However, they find it hard to open up to others and often turn to escapism. A plain and routine life is not their style. Though conservative and careful in their actions, they need surprises every so often to spice things up."
            case .dragon:
                return "Men born in the Dragon year are steadfast in their beliefs. They will never slack off on responsibilities nor be unnecessarily suspicious. People rarely lose trust in these honest men. They don’t waste money, but also don’t pay much attention to it. Adventurous entrepreneurs at heart, they dream of shooting to fame. Sometimes their efforts go to waste though. Still, their lives revolve around work. These men are completely fine alone. They either marry at a young age or remain as a bachelor. For significant others, they need someone that can help and support his career. Women born in the Dragon year are mesmerizing and strong. If you underestimate them, they will stand up and defeat you. They are serious in what they do and have high self-esteems. The only thing they require of others is respect. Feminism and gender equality are important to them. Many forgo marriage to focus on their career. But if they do choose to marry, they also make great wives. Often, they only go to the extremes and should take the time to consider a balanced mix."
            case .snake:
                return "Snakes are humorous and sophisticated. They don’t like small talk or thinking about small everyday problems. In a chaotic environment, they are the eye of the storm. Snakes are able to hold their ground and calmly think of solutions. They are always making new plans and follow them without relying on others’ input. They’re usually correct, but this also comes from a distrust of others. You cannot judge a Snake by its cover. Their slow and lazy talking hides their fast-paced thinking. Behind their calmness, they are alert and observant."
            case .horse:
                return "Horses are full of energy, albeit a bit too much. Both studious and athletic, they are strong believers of chasing after dreams. Rather than wealth and fame, happiness is what motivates them. They expect others to operate at the same speed as them and don’t understand why others can’t. Contradicting characteristics come from the fact that they are ever-changing emotions. They have short tempers and become angry quickly. But once it’s over, they forget quickly. They’re biggest fault is that they’re blind to their own faults."
            case .goat:
                return "Men born in the Goat year are true gentlemen. They are family-oriented and have a heartfelt personality. No matter where they go, they can be seen interacting with people and making new friends. They listen to people genuinely and are mature. When others are having trouble, they’ll do their best to help. They don’t like giving themselves too much pressure, and don’t criticize others either. During an argument, they’re often the peacemaker. At the right times, they offer advice and tips. But they are often pessimistic. It’s hard for them to see the positive sides of things and this makes them anxious. These men try to use enthusiasm to hide their darkness. They crave for attention and support. Women born in the Goat year are reliable and attentive. Not even the smallest details can escape their eyes. They are social as well and sensitive to others’ needs. They are very motivated and can be depended on to perform tasks well. But they’re not the best at solving problem. They often don’t listen to warnings and end up doing things the hard way. These women aim for high standards and live an organized life. However, they can be worrywarts and often feel insecure. Despite their kindness towards others, they are hard on themselves and never feel satisfied."
            case .monkey:
                return "Men born in the Monkey year are enthusiastic and responsible. They’re humorous and can make anyone laugh. They also know how to easily get what they want. They are stubborn and a bit immature, but actually tolerant. Other zodiacs might only focus on people’s faults, but these men can look past most faults. They’re also very forgiving. Many times, they don’t even remember what happened. However, they can be problematic too. It’s hard for them to persevere since their interests are always changing. They’re the typical opportunist and can’t maintain long-term relationships. Women born in the Monkey year are social and connect with others easily. People are unconsciously drawn to her beauty and warm personality. They have high standards and expectations. These women are full of ideas and highly competitive. They don’t surrender when faced with difficulties. Sympathy and comfort from others aren’t needed. Because of their confidence, they can be overly optimistic. But they are responsible and flexible. They adapt quickly to changing environments and make new friends easily."
            case .rooster:
                return "Roosters are serious in their work. They are straightforward and decisive in their actions. They’ll directly criticize what they see unfit and are perfectionists. They are logical and good at managing teams. Family is a refuge and paradise for them. They wish for a large family—it means that there are more people to encourage and support them. No matter how difficult something is, they won’t give up. But if someone is blocking their path, they will reveal their fierce side. They are terrifying if angered and get into arguments easily. Even if they lose, they’ll use various methods to convince others into their side. Roosters really just need loved ones to validate them and encouragement to find themselves."
            case .dog:
                return "A Dog’s most defining characteristic is their loyalty. They will never abandon their friends, family or work. Honest and just, they are popular in social circles. Everyone needs a Dog friend for advice and help. They are also good at helping others find and fix their bad habits. Despite how they act, they are worried and anxious inside. However, they will not let this stop them. Once they decide on something, no one can persuade them against it."
            case .pig:
                return "Pigs might not stand out in a crowd. But they are very realistic. Others may be all talk and no action. Pigs are the opposite. Though not wasteful spenders, they will let themselves enjoy life. They love entertainment and will occasionally treat themselves. They are a bit materialistic, but this is motivation for them to work hard. Being able to hold solid objects in their hands gives them security. They are energetic and are always enthusiastic, even for boring jobs. If given the chance, they will take positions of power and status. They believe that only those people have the right to speak, and that’s what they want."
            }
            
        }
        
    }
    
    init(as animalType: AnimalType?) {
        self.animalsTypes = animalType
    }
    
    // MARK: PICKER RETURN LOGIC
    
    func typeForDate (_ date: Date) -> AnimalType?{
        
        let dateAsString = date.description
        let dateSpliteinBlank = dateAsString.split(separator: " ")
        let dateSplited = dateSpliteinBlank[0].split(separator: "-")
        
        guard let year = Int(dateSplited[0]), let month = Int(dateSplited[1]), let day = Int(dateSplited[2]) else {return nil}
        
        switch year {
        case 1989:
            if day <= 5 && month <= 2 {return .dragon}
            else {return .snake}
        case 1990:
            if day <= 26 && month <= 1 {return .snake}
            else {return .horse}
        case 1991:
            if day <= 14 && month <= 2 {return .horse}
            else { return .goat }
        case 1992:
            if day <= 3 && month <= 2 {return .goat}
            else { return .monkey }
        case 1993:
            if day <= 22 && month <= 1 {return .monkey}
            else { return .rooster }
        case 1994:
            if day <= 9 && month <= 2 {return .rooster}
            else { return .dog}
        case 1995:
            if day <= 30 && month <= 1 {return .dog}
            else {return .pig}
        case 1996:
            if day <= 18 && month <= 2 {return .pig}
            else { return .rat }
        case 1997:
            if day <= 7 && month <= 2 {return .rat}
            else { return .ox }
        case 1998:
            if day <= 27 && month <= 1 {return .ox}
            else { return .tiger }
        case 1999:
            if day <= 15 && month <= 2 {return .tiger}
            else {return .rabbit }
        case 2000:
            if day <= 4 && month <= 2 {return .rabbit}
            else { return .dragon}
        case 2001:
            if day <= 23 && month <= 1 {return .dragon}
            else {return .snake}
        default:
            return calculeSymbol(year: year)
        }
        
    }
    func calculeSymbol (year:Int) -> AnimalType? {
        let tipo = year%12
        switch tipo {
        case 1:
            return .snake
        case 2:
            return .horse
        case 3:
            return .goat
        case 4:
            return .monkey
        case 5:
            return .rooster
        case 6:
            return .dog
        case 7:
            return .pig
        case 8:
            return .rat
        case 9:
            return .ox
        case 10:
            return .tiger
        case 11:
            return .rabbit
        case 0:
            return .dragon
        default:
            return nil
        }
    }
}
