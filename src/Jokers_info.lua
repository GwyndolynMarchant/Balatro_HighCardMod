return {
    XPlayingJoker = {
    	loc = {
	        name = "X-Playing Joker",
	        text = {
	            "If {C:attention}first hand{} of round",
	            "is {C:attention}High Card{}, turn that",
	            "into a {C:attention}X-Playing Card{} and",
	            "activate it after scoring.",
	        }, 
	        card_eval = "PLAY!"
	    },
        ability_name = "HCM X-Play",
        slug = "hcm_xplay",
        ability = { extra = { placeholder = 1.0 } }
    },
    XPlayingSpade2 = {
    	loc = {
	        name = "Neo New Nambu",
	        text = {
	            "Gain {C:blue}+#1#{} Hand upon hand played, ",
	            "but you must play {C:attention}#3# cards{}",
	            "{C:attention}per hand{}, {C:attention}lose all discards{}",
	            "and set hand size to {C:attention}#2#{}.",
	            "When round ends, transform",
	            "back to the {C:attention}X-Playing Card{}."
	        },
	        summary = {
	        	"Refund hands of five, but lose all", 
	        	"discards and reduce hand size to six."
	        },
	        card_eval = "Neo New Nambu!"
	    },
        ability_name = "HCM Neo New Nambu",
        slug = "hcm_neo_new_nambu",
        ability = { extra = { hand_gain = 1, hand_size = 6, hand_ge = 5, 
        			done = false} }
    },
    XPlayingSpade3 = {
    	loc = {
	        name = "Staff Master",
	        text = {
	            "If you score a {C:attention}Three of a Kind{}",
	            "with cards of {C:attention}#1# different suits{},",
	            "add a card of the {C:attention}missing suit{}",
	            "to make it {C:attention}Four of a Kind{}.",
	            "When round ends, transform",
	            "back to the {C:attention}X-Playing Card{}."
	        },
	        summary = {
	        	"Three of a Kind with three suits", 
	        	"becomes Four of a Kind with four suits."
	        },
	        card_eval = "Extend!"
	    },
        ability_name = "HCM Staff Master",
        slug = "hcm_staff_master",
        ability = { extra = { done = false, suits_required = 3} }
    },
    XPlayingSpade4 = {
    	loc = {
	        name = "Clear Lance",
	        text = {
	            "If you play {C:attention}#1#{} cards and",
	            "score {C:attention}exactly #2#{} cards,",
	            "this card gives {X:mult,C:white}X#3#{} Mult. ",
	            "When round ends, transform",
	            "back to the {C:attention}X-Playing Card{}."
	        },
	        summary = {
	        	"Score four of a five card play",
	        	"and get four times mult."
	        },
	        card_eval = "Clear Lance!"
	    },
        ability_name = "HCM Clear Lance",
        slug = "hcm_clear_lance",
        ability = { extra = { card_play = 5, card_score = 4, Xmult = 4, 
        			done = false} }
    },
    XPlayingSpade5 = {
    	loc = {
	        name = "Brain Buster",
	        text = {
	            "If your {C:attention}highest scoring card{}",
	            "is higher than before, ",
	            "accumulate {X:mult,C:white}X#1#{} Mult until",
	            "end of round. {C:inactive}(Now {}{X:mult,C:white}X#2#{}{C:inactive}){}",
	            "When round ends, transform",
	            "back to the {C:attention}X-Playing Card{}."
	        },
	        summary = {
	        	"Play escalating ranks for escalating mult."
	        },
	        card_eval = "Brain Buster!"
	    },
        ability_name = "HCM Brain Buster",
        slug = "hcm_brain_buster",
        ability = { extra = { current_highest = 5, Xmult = 1, Xmult_acc = 1,
        			done = false} }
    },
    XPlayingSpade6 = {
    	loc = {
	        name = "Juggling Gun",
	        text = {
	            "Automatically plays your {C:attention}lowest{}",
	            "{C:attention}card held in hand{} in addition",
	            "to your selected cards for play.",
	            "When round ends, transform",
	            "back to the {C:attention}X-Playing Card{}."
	        },
	        summary = {
	        	"Plays your lowest card held in",
	        	"hand in addition to what you play."
	        },
	        card_eval = "Fire!"
	    },
        ability_name = "HCM Juggling Gun",
        slug = "hcm_juggling_gun",
        ability = { extra = { done = false} }
    },
    XPlayingSpade7 = {
    	loc = {
	        name = "Interceptor",
	        text = {
	            "Randomly {C:attention}enhance{} every scoring",
	            "cards before scoring, but ",
	            "{C:attention}remove all enhancements{} from ",
	            "scoring cards afterwards.",
	            "When round ends, transform",
	            "back to the {C:attention}X-Playing Card{}."
	        },
	        summary = {
	        	"Every scoring cards gains",
	        	"a temporary enhancement."
	        },
	        card_eval_on = "Interceptor On!",
	        card_eval_off = "Interceptor Off!"
	    },
        ability_name = "HCM Interceptor",
        slug = "hcm_interceptor",
        ability = { extra = { done = false} }
    },
    XPlayingSpade8 = {
    	loc = {
	        name = "All Kaboom",
	        text = {
	            "Destroy the {C:attention}first scoring card{}",
	            "and all other scoring cards ",
	            "that are {C:attention}of the same suit{}. ",
	            "each destruction gives {C:mult}+#1#{} Mult. ",
	            "When round ends, transform",
	            "back to the {C:attention}X-Playing Card{}."
	        }, 
	        summary = {
	        	"Destroys first played and matching",
	        	"-suit cards played in return for mult."
	        },
	        card_eval_pc = "Place Bomb..",
	        card_eval_jk = "All Kaboom!"
	    },
        ability_name = "HCM All Kaboom",
        slug = "hcm_all_kaboom",
        ability = { extra = { kaboom_mult = 5, mult_cnt = 0, kaboom_suit = nil, 
        			done = false} }
    },
    XPlayingSpade9 = {
    	loc = {
	        name = "Bokka",
	        text = {
	            "Remove {C:attention}debuff{}",
	            "from played cards.",
	            "When round ends, transform",
	            "back to the {C:attention}X-Playing Card{}."
	        },
	        summary = {
	        	"Remove debuff from played cards."
	        },
	        card_eval = "Bokka!"
	    },
        ability_name = "HCM Bokka",
        slug = "hcm_bokka",
        ability = { extra = { done = false} }
    },
    XPlayingSpade10 = {
    	loc = {
	        name = "Honest Straight",
	        text = {
	            "Turn all scored cards",
	            "into a {C:attention}random{} scored card",
	            "{C:attention}after the scoring stage{}. ",
	            "When round ends, transform",
	            "back to the {C:attention}X-Playing Card{}."
	        },
	        summary = {
	        	"Turn all scored cards into",
	        	"a random scored card."
	        },
	        card_eval = "Honest Straight!",
	        card_eval_pc = "HIT!"
	    },
        ability_name = "HCM Honest Straight",
        slug = "hcm_honest_straight",
        ability = { extra = { transfer_card = nil, done = false} }
    },
    XPlayingSpadeJ = {
    	loc = {
	        name = "Marine Hunter",
	        text = {
	            "Scoring your {C:attention}most played hand{}",
	            "will add the {C:attention}number of times{}",
	            "{C:attention}this hand is played{} to {C:mult}mult{}.",
	            "{C:inactive}(Now Looking for{} {C:attention}#1#{}{C:inactive}...){}",
	            "When round ends, transform",
	            "back to the {C:attention}X-Playing Card{}."
	        },
	        summary = {
	        	"Play your most-played hand",
	        	"to gain escalating mult."
	        },
	        card_eval = "Marine Hunter!",
	    },
        ability_name = "HCM Marine Hunter",
        slug = "hcm_marine_hunter",
        ability = { extra = { mult_gain = 0, best_hand = "High Card", done = false} }
    },
    XPlayingSpadeQ = {
    	loc = {
	        name = "Typhoid Mary",
	        text = {
	            "After you play a hand,",
	            "{C:attention}replay{} that hand with {X:mult,C:white}X#1#{}.",
	            "When round ends, transform",
	            "back to the {C:attention}X-Playing Card{}."
	        },
	        summary = {
	        	"Replay each hand with half mult."
	        },
	        card_eval = "Typhoid Mary!",
	    },
        ability_name = "HCM Typhoid Mary",
        slug = "hcm_typhoid_mary",
        ability = { extra = { Xmult = 0.5, done = false, bonus_hand = false, 
        			highlighted_cards = {}, indicator = false} }
    },
    XPlayingSpadeK = {
    	loc = {
	        name = "San Galgano",
	        text = {
	            "When you score any {C:attention}X-Playing Card{} as ",
	            "{C:attention}High Card{}, {C:red}consume{} the X-Playing Card",
	            "and {C:red}disable{} its transformation from ",
	            "all its replicas. Gain {X:mult,C:white}X#1#{} per card",
	            "consumed. {C:inactive}(Currently gives{} {X:mult,C:white}X#2#{} {C:inactive}){}",
	            "{C:red}Warning: This card has a mind of its own!{}"
	        },
	        summary = {
	        	"Devours X-Playing Cards and disables",
	        	"their abilities permanently. Gain",
	        	"multiplier mult in return.",
	        	"WARNING: This card has a a mind of its own!"
	        },
	        card_eval_default = "Kneel before San Galgano!",
	        card_eval_awaken = "I AM AWAKENED!",
	        card_eval_return = "I WILL RETURN!",
	        card_eval_enter = "I HAVE RETURNED!",
	        card_eval_consume = "Your Power is Mine!",
	        card_eval_disabled = "The power was consumed!",
	        card_eval_hesitate_0 = "?!",
	        card_eval_hesitate_1 = "YOU DON'T WANT TO DO THIS!",
	        card_eval_hesitate_2 = "THINK TWICE!",
	        card_eval_hesitate_3 = "PLEASE DON'T...",
	        card_eval_sealed = "NO!!!",
	        card_eval = "San Galgano!",
	        card_eval_replace = "My Turn!",
	        card_eval_regenerate = "YOU CAN'T GET RID OF ME!",
	        card_eval_takeover = "THE THRONE IS MINE!"
	    },
        ability_name = "HCM San Galgano",
        slug = "hcm_san_galgano",
        ability = { extra = { Xmult = 1, Xmult_acc = 1, card_consumed = 0, hesitation = 0,
        			shown = false, joker_sliced = false, done = false} }
    },
    XPlayingSpadeA = {
    	loc = {
	        name = "Love & Peace",
	        text = {
	            "Give {C:chips}+#1#{} Chips and {C:mult}+#2#{} Mult",
	            "per card scored, but",
	            "{C:attention}force a card{} for each hand.",
	            "When round ends, transform",
	            "back to the {C:attention}X-Playing Card{}."
	        },
	        summary = {
	        	"Give bonus chips and mult,",
	        	"but force a card in each hand."
	        },
	        card_eval = "Love & Peace!"
	    },
        ability_name = "HCM Love and Peace",
        slug = "hcm_love_and_peace",
        ability = { extra = { chips_gain = 110, mult_gain = 11, discard_cnt = 0, 
        			done = false} }
    },
    XPlayingHeart2 = {
    	loc = {
	        name = "Jelly Crawler",
	        text = {
	            "Cards can be considered",
	            "{C:attention}1 rank lower{} if that helps",
	            "forming a better poker hand. ",
	            "When round ends, transform",
	            "back to the {C:attention}X-Playing Card{}."
	        },
	        summary = {
	        	"Cards will be considered one rank",
	        	"lower if it forms a better hand."
	        }
	    },
        ability_name = "HCM Jelly Crawler",
        slug = "hcm_jelly_crawler",
        ability = { extra = { done = false} }
    },
    XPlayingHeart3 = {
    	loc = {
	        name = "Rockin' Rocks",
	        text = {
	            "Turning your first scoring card ",
	            "into {C:attention}Stone Card{}. Retriggers ",
	            "played {C:attention}Stone Card{} for {C:attention}#1# times{}.",
	            "When round ends, transform",
	            "back to the {C:attention}X-Playing Card{}."
	        },
	        summary = {
	        	"Turns your first scoring card",
	        	"into Stone, then retriggers",
	        	"two times."
	        },
	        card_eval = "Rockin' Rocks!"
	    },
        ability_name = "HCM Rockin Rocks",
        slug = "hcm_rockin_rocks",
        ability = { extra = { retrigger_cnt = 2, done = false} }
    },
    XPlayingHeart4 = {
    	loc = {
	        name = "Agent S",
	        text = {
	            "Retrigger the lowest",
	            "played card used in",
	            "scoring for {C:attention}#1# times{}.",
	            "When round ends, transform",
	            "back to the {C:attention}X-Playing Card{}."
	        },
	        summary = {
	        	"Retrigger lowest scoring",
	        	"card four times."
	        },
	        card_eval = "Agent S!"
	    },
        ability_name = "HCM Agent S",
        slug = "hcm_agent_s",
        ability = { extra = { retrigger_cnt = 4, repeated = false, 
        			done = false} }
    },
    XPlayingHeart5 = {
    	loc = {
	        name = "Calorie's High",
	        text = {
	            "Gain {C:red}+#1#{} Discard upon ",
	            "card(s) discarded, but ",
	            "you only play {C:attention}#2# hand{}.",
	            "When round ends, transform",
	            "back to the {C:attention}X-Playing Card{}."
	        },
	        summary = {
	        	"Discard as much as you want,",
	        	"but only play one hand."
	        },
	        card_eval = "Calorie's High!"
	    },
        ability_name = "HCM Calories High",
        slug = "hcm_calories_high",
        ability = { extra = { discard_gain = 1, hand_play = 1, discard_cnt = 0, 
        			done = false} }
    },
    XPlayingHeart6 = {
    	loc = {
	        name = "The Zoo",
	        text = {
	            "Transform your scoring cards",
	            "to the {C:attention}leftmost{} scoring card",
	            "if they are of the same {C:attention}rank{}.",
	            "When round ends, transform",
	            "back to the {C:attention}X-Playing Card{}."
	        },
	        summary = {
	        	"Transform scored cards to",
	        	"leftmost-card if they share rank."
	        },
	        card_eval = "The Zoo!",
	        card_eval_pc = "HIT!"
	    },
        ability_name = "HCM The Zoo",
        slug = "hcm_the_zoo",
        ability = { extra = { transfer_card = nil, done = false} }
    },
    XPlayingHeart7 = {
    	loc = {
	        name = "Chameleon",
	        text = {
	            "Convert {C:attention}suit{} of your",
	            "played cards to suit",
	            "of {C:attention}a random played card{}.",
	            "When round ends, transform",
	            "back to the {C:attention}X-Playing Card{}."
	        },
	        summary = {
	        	"Convert suit of all played",
	        	"cards to one suit amongst them."
	        },
	        card_eval = "Chameleon!"
	    },
        ability_name = "HCM Chameleon",
        slug = "hcm_chameleon",
        ability = { extra = { done = false} }
    },
    XPlayingHeart8 = {
    	loc = {
	        name = "Mun Pheromone Mun",
	        text = {
	            "If you scored {C:attention}High Card{} is lower",
	            "than 8, increase its {C:attention}rank{} by 1;",
	            "if it's higher, decrease it by 1. ",
	            "When round ends, transform",
	            "back to the {C:attention}X-Playing Card{}."
	        },
	        summary = {
	        	"Pushes rank of High Card towards eight."
	        },
	        card_eval = "Mun!"
	    },
        ability_name = "HCM Mun Pheromone Mun",
        slug = "hcm_mun_pheromone_mun",
        ability = { extra = { done = false} }
    },
    XPlayingHeart9 = {
    	loc = {
	        name = "Marvelous Genius",
	        text = {
	            "If you finish the round in",
	            "{C:blue}1 hand{} after this card is",
	            "added, gain {C:attention}#1#{} {C:tarot}Tarot{} cards.",
	            "When round ends, transform",
	            "back to the {C:attention}X-Playing Card{}."
	        },
	        summary = {
	        	"Gain a tarot card for beating",
	        	"the round in one hand."
	        },
	        card_eval = "Marvelous Genius!"
	    },
        ability_name = "HCM Marvelous Genius",
        slug = "hcm_marvelous_genius",
        ability = { extra = { done = false, tarot_cnt = 2, hand_cnt = 0 } }
    },
    XPlayingHeart10 = {
    	loc = {
	        name = "Common Destiny",
	        text = {
	            "If you scoring hand contains",
	            "{C:attention}exactly #1# cards{}, this hand",
	            "is regarded as {C:attention}Five of A Kind{}. ",
	            "When round ends, transform",
	            "back to the {C:attention}X-Playing Card{}."
	        },
	        summary = {
	        	"Treat hands with five scoring",
	        	"cards as Five of a Kind."
	        },
	        card_eval = "Common Destiny!"
	    },
        ability_name = "HCM Common Destiny",
        slug = "hcm_common_destiny",
        ability = { extra = { done = false, chain_cnt = 5} }
    },
    XPlayingHeartJ = {
    	loc = {
	        name = "Sky Dancer",
	        text = {
	            "Scoring your {C:attention}most played hand{}",
	            "that's not High Card will",
	            "give a corresponding {C:planet}Planet{} card.",
	            "When round ends, transform",
	            "back to the {C:attention}X-Playing Card{}."
	        },
	        summary = {
	        	"Gain Planet card for playing",
	        	"highest hand that is not",
	        	"a High Card."
	        },
	        card_eval = "Sky Dancer!"
	    },
        ability_name = "HCM Sky Dancer",
        slug = "hcm_sky_dancer",
        ability = { extra = { done = false} }
    },
    XPlayingHeartQ = {
    	loc = {
	        name = "Sonic Move",
	        text = {
	            "Start a {C:attention}#1# second timer{}, ",
	            "{C:red}Lose the game when time is{}",
	            "{C:red}up{}. This card gives {X:mult,C:white}X#2#{}",
	            "{C:inactive}(Time left: #3#s){}",
	            "When round ends, transform",
	            "back to the {C:attention}X-Playing Card{}."
	        },
	        summary = {
	        	"You have one minute to win",
	        	"and times-twelve mult."
	        },
	        card_eval = "Sonic Move!"
	    },
        ability_name = "HCM Sonic Move",
        slug = "hcm_sonic_move",
        ability = { extra = { done = false, timer_value = 60, timer = 60, Xmult = 12 } }
    },
    XPlayingHeartK = {
    	loc = {
	        name = "Masculine Parfait",
	        text = {
	            "Destroy all scoring {C:attention}face cards{} and add",
	            "{C:chips}+#1#{} chips and {C:mult}+#2#{} mult per card to {C:attention}both{}",
	            "{C:attention}this joker and the X-Playing Card{}.",
	            "{C:inactive}(Now gives {}{C:chips}+#3#{} chips, {C:mult}+#4#{} mult{C:inactive}){}",
	            "When round ends, transform",
	            "back to the {C:attention}X-Playing Card{}."
	        },
	        summary = {
	        	"Devour face cards to",
	        	"permanently increase mult",
	        	"of this joker and card."
	        },
	        card_eval = "Masculine Parfait!"
	    },
        ability_name = "HCM Masculine Parfait",
        slug = "hcm_masculine_parfait",
        ability = { extra = { done = false, transfer_card = nil, mult_gain = 5, 
        			chips_gain = 10, mult_acc = 0, chips_acc = 0} }
    },
    XPlayingHeartA = {
    	loc = {
	        name = "Faceless",
	        text = {
	            "If you play {C:attention}#1#{} or less cards, ",
	            "this will act like a",
	            "{C:attention}playing card{} that forms",
	            "a {C:attention}higher poker hand{}.",
	            "When round ends, transform",
	            "back to the {C:attention}X-Playing Card{}."
	        },
	        summary = {
	        	"Play four or less cards",
	        	"and score a temporary card",
	        	"that upgrades the hand."
	        },
	        card_eval = "Faceless!"
	    },
        ability_name = "HCM Faceless",
        slug = "hcm_faceless",
        ability = { extra = { cards_limit = 4, fake_card = nil, 
        					insert_pos = 0, delete_pos = 0, faceless_trigger = false,
        			done = false} }
    },
    XPlayingDiamond2= {
    	loc = {
	        name = "Love Connection",
	        text = {
	            "Your poker hand played",
	            "is always considered to",
	            "have contained a {C:attention}Pair{}.",
	            "When round ends, transform",
	            "back to the {C:attention}X-Playing Card{}."
	        },
	        summary = {
	        	"Poker hand is always",
	        	"considered to contain a pair."
	        },
	        card_eval = "Love Connection!"
	    },
        ability_name = "HCM Love Connection",
        slug = "hcm_love_connection",
        ability = { extra = { done = false} }
    },
    XPlayingDiamond3= {
    	loc = {
	        name = "Marble Rumble",
	        text = {
	            "Turn your {C:attention}scoring hand{}",
	            "into {C:attention}Glass Card{}.",
	            "When round ends, transform",
	            "back to the {C:attention}X-Playing Card{}."
	        },
	        summary = {
	        	"Turn scoring cards to glass."
	        },
	        card_eval = "Marble Rumble!"
	    },
        ability_name = "HCM Marble Rumble",
        slug = "hcm_marble_rumble",
        ability = { extra = { done = false} }
    },
    XPlayingDiamond4= {
    	loc = {
	        name = "Musical Alchemist",
	        text = {
	            "Add a {C:attention}Wildcard 4{} to play if",
	            "you played {C:attention}exactly #1# cards{}",
	            "and this helps to form {C:attention}Flush{}.",
	            "When round ends, transform",
	            "back to the {C:attention}X-Playing Card{}."
	        },
	        summary = {
	        	"Play four cards and add a",
	        	"Wildcard rank four card to",
	        	"hand if it would make a Flush."
	        },
	        card_eval = "Musical Alchemist!"
	    },
        ability_name = "HCM Musical Alchemist",
        slug = "hcm_musical_alchemist",
        ability = { extra = { required_cnt = 4, done = false} }
    },
    XPlayingDiamond5= {
    	loc = {
	        name = "Greatest Man",
	        text = {
	            "If your {C:attention}scoring poker{} is higher",
	            "than your round best, upgrade",
	            "level of played {C:attention}poker hand{}.",
	            "{C:inactive}(Current best is {}{C:attention}#1#{}{C:inactive}){}",
	            "When round ends, transform",
	            "back to the {C:attention}X-Playing Card{}."
	        },
	        summary = {
	        	"Escalate scored poker",
	        	"hand to upgrade its level."
	        },
	        card_eval = "Evolve!"
	    },
        ability_name = "HCM Greatest Man",
        slug = "hcm_greatest_man",
        ability = { extra = { done = false, best_hand = "High Card"} }
    },
    XPlayingDiamond6= {
    	loc = {
	        name = "13 Stairs",
	        text = {
	            "If you have scored {C:red}exactly{}",
	            "{C:red}#1#{} cards this round, ",
	            "{C:attention}-#2# Ante{}. {C:inactive}({}{C:red}#3#{} {C:inactive}cards scored){}",
	            "When round ends, transform",
	            "back to the {C:attention}X-Playing Card{}."
	        },
	        summary = {
	        	"Score thirteen cards",
	        	"to reduce ante by one."
	        },
	        card_eval = "13 Stairs!"
	    },
        ability_name = "HCM 13 Stairs",
        slug = "hcm_13_stairs",
        ability = { extra = { stairs = 13, ante_mod = 1, scored_cards = 1, 
        			done = false} }
    },
    XPlayingDiamond7= {
    	loc = {
	        name = "Never No Dollars",
	        text = {
	            "Spend up to {C:attention}#1#{} dollars,",
	            "add that amount to {C:mult}Mult{}",
	            "and {X:chips,C:white}X#2#{} that amount to {C:chips}Chips{}.",
	            "When round ends, transform",
	            "back to the {C:attention}X-Playing Card{}."
	        },
	        summary = {
	        	"Drain money to increase",
	        	"mult and chips."
	        },
	        card_eval_on = "Never No Dollars!",
	        card_eval_off = "No Dollar :("
	    },
        ability_name = "HCM Never No Dollars",
        slug = "hcm_never_no_dollars",
        ability = { extra = { max_money = 20, chip_mult = 10, done = false} }
    },
    XPlayingDiamond8= {
    	loc = {
	        name = "Red Labyrinth",
	        text = {
	            "Selling consumeables will not earn",
	            "dollars, but will spend {C:attention}#1# dollar{}",
	            "and get a {C:attention}random consumeable of{}",
	            "{C:attention}the same type{} if you have dollars.",
	            "When round ends, transform",
	            "back to the {C:attention}X-Playing Card{}."
	        },
	        summary = {
	        	"Reroll consumables for cash."
	        },
	        card_eval = "Red Labyrinth!"
	    },
        ability_name = "HCM Red Labyrinth",
        slug = "hcm_red_labyrinth",
        ability = { extra = {reroll_cost = 1, done = false} }
    },
    XPlayingDiamond9= {
    	loc = {
	        name = "No Mercy",
	        text = {
	            "If you play {C:attention}5 cards{} of",
	            "{C:attention}distinctive ranks{}, this card",
	            "accumulate {C:mult}+#1#{} mult; Otherwise",
	            "{C:attention}lose all mult accumulated{}",
	            "and set your {C:blue}hand{} to {C:blue}0{}. ",
	            "{C:inactive}(Currently{} {C:mult}+#2#{} {C:inactive}Mult){}",
	            --"Otherwise, you {C:red}lose the game instantly{}.",
	            "This X-Playing card is {C:attention}eternal{}."
	        },
	        summary = {
	        	"Play five cards with no",
	        	"repeating ranks to",
	        	"accumulate mult."
	        },
	        card_eval = "No Mercy!",
	        card_eval_mercy = "Absorb.."
	    },
        ability_name = "HCM No Mercy",
        slug = "hcm_no_mercy",
        ability = { extra = {done = false, mult_gain = 9, mult_acc = 0, reset = false} }
    },
    XPlayingDiamond10= {
    	loc = {
	        name = "Unlucky Poky",
	        text = {
	            "All {C:green,E:1,S:1.1}probabilities{} become",
	            "{C:green,E:1,S:1.1}deterministic{} (always trigger)",
	            "during the scoring stage.",
	            "When round ends, transform",
	            "back to the {C:attention}X-Playing Card{}."
	        },
	        summary = {
	        	"Always trigger",
	        	"all propbabilities."
	        },
	        card_eval = "Unlucky Poky!"
	    },
        ability_name = "HCM Unlucky Poky",
        slug = "hcm_unlucky_poky",
        ability = { extra = {done = false} }
    },
    XPlayingDiamondJ= {
    	loc = {
	        name = "Out of Five",
	        text = {
	            "{C:attention}High Card{} poker hand will",
	            "score as your {C:attention}most played{}",
	            "{C:attention}hand{} that's not High Card.",
	            "{C:inactive}(Now it's{} {C:attention}#1#{}{C:inactive}...){}",
	            "When round ends, transform",
	            "back to the {C:attention}X-Playing Card{}."
	        },
	        summary = {
	        	"High Card poker hands become",
	        	"next most-played poker hand."
	        },
	        card_eval = "Out of Five!"
	    },
        ability_name = "HCM Out of Five",
        slug = "hcm_out_of_five",
        ability = { extra = { best_hand = "Nothing else", msg_on = false, shown = false,
        			done = false} }
    },
    XPlayingDiamondQ= {
    	loc = {
	        name = "Balor",
	        text = {
	            "Gains a {C:spectral}vision{} that shows",
	            "cards in deck {C:attention}in the order{}",
	            "{C:attention}of which they will be drawn.{}",
	            "When round ends, transform",
	            "back to the {C:attention}X-Playing Card{}."
	        },
	        summary = {
	        	"Scry deck."
	        },
	        card_eval = "Balor Vision",
	        card_explained = "Cards will be drawn from left to right!"
	    },
        ability_name = "HCM Balor",
        slug = "hcm_balor",
        ability = { extra = { done = false} }
    },
    XPlayingDiamondK= {
    	loc = {
	        name = "Round & Round",
	        text = {
	            "If your scoring hand contains",
	            "{C:attention}#1#{} scoring cards, {C:purple}balance{}",
	            "your {C:chips}chips{} and {C:mult}mult{} and",
	            "{C:attention}destroy{} all scoring cards.",
	            "When round ends, transform",
	            "back to the {C:attention}X-Playing Card{}."
	        },
	        summary = {
	        	"Score five cards to",
	        	"balance chips and mult."
	        },
	        card_eval = "Round & Round!"
	    },
        ability_name = "HCM Round and Round",
        slug = "hcm_round_and_round",
        ability = { extra = { required_cnt = 5, required_sat = false, done = false} }
    },
    XPlayingDiamondA= {
    	loc = {
	        name = "Dynamic Kinesis",
	        text = {
	            "If your played hand is",
	            "{C:attention}exactly #1# card{}, retrigger",
	            "this card {C:attention}#2# times{}. ",
	            "When round ends, transform",
	            "back to the {C:attention}X-Playing Card{}."
	        },
	        summary = {
	        	"Play a single card",
	        	"to retrigger it",
	        	"five times."
	        },
	        card_eval = "Dynamic Kinesis!"
	    },
        ability_name = "HCM Dynamic Kinesis",
        slug = "hcm_dynamic_kinesis",
        ability = { extra = { retrigger_cnt = 5, required_cnt = 1, repeated = false, done = false} }
    },
    XPlayingClub2= {
    	loc = {
	        name = "Metallical Parade",
	        text = {
	            "{X:mult,C:white}X#1#{} per {C:attention}Steel Card{} or",
	            "{C:attention}Gold Card{} played when scored.",
	            "When round ends, transform",
	            "back to the {C:attention}X-Playing Card{}."
	        },
	        summary = {
	        	"Steel and gold cards provide",
	        	"one-point-five-times mult",
	        	"when scored."
	        },
	        card_eval = "Metallical Parade!",
	        card_eval_pc = "Metal!",
	    },
        ability_name = "HCM Metallical Parade",
        slug = "hcm_metallical_parade",
        ability = { extra = { Xmult = 1.5, done = false} }
    },
    XPlayingClub3= {
    	loc = {
	        name = "Green Green",
	        text = {
	            "Your poker hand played",
	            "is always considered",
	            "{C:red}only{} as {C:attention}Straight{}.",
	            "When round ends, transform",
	            "back to the {C:attention}X-Playing Card{}."
	        },
	        summary = {
	        	"All poker hands are",
	        	"considered Straight."
	        },
	        card_eval = "Green Green!"
	    },
        ability_name = "HCM Green Green",
        slug = "hcm_green_green",
        ability = { extra = { done = false} }
    },
    XPlayingClub4= {
    	loc = {
	        name = "Wing Wind",
	        text = {
	            "Your {C:attention}Gold{}, {C:blue}Blue{} and {C:purple}Purple{} Seals",
	            "can all trigger upon {C:attention}scoring{},",
	            "{C:attention}discard{} or {C:attention}held at end of round{}.",
	            "When round ends, transform",
	            "back to the {C:attention}X-Playing Card{}."
	        },
	        summary = {
	        	"Gold, Blue, and Purple seals",
	        	"trigger on scoring."
	        },
	        card_eval = "Wing Wind!"
	    },
        ability_name = "HCM Wing Wind",
        slug = "hcm_wing_wind",
        ability = { extra = { done = false} }
    },
    XPlayingClub5= {
    	loc = {
	        name = "G Round",
	        text = {
	            "When {C:attention}Stone Cards{} are played,",
	            "gain {C:mult}+#1#{} Mult each for this",
	            "round and {C:attention}destroy{} them.",
	            "{C:inactive}(Currently{} {C:mult}+#2#{} {C:inactive}Mult){}",
	            "When round ends, transform",
	            "back to the {C:attention}X-Playing Card{}."
	        },
	        summary = {
	        	"Devour Stone cards for",
	        	"temporary mult."
	        },
	        card_eval_pc = "Stomp!",
	        card_eval_jk = "G Round!"
	    },
        ability_name = "HCM G Round",
        slug = "hcm_g_round",
        ability = { extra = { mult_gain = 5, mult_acc = 0, done = false} }
    },
    XPlayingClub6= {
    	loc = {
	        name = "Eye of the Storm",
	        text = {
	            "All scoring cards whose rank",
	            "is equal to the {C:attention}average{}",
	            "{C:attention}scoring rank of this hand{}",
	            "permanently gains {C:chips}+#1#{} chips.",
	            "When round ends, transform",
	            "back to the {C:attention}X-Playing Card{}."
	        },
	        summary = {
	        	"The median scoring cards",
	        	"of every hand permanently",
	        	"gain chips."
	        },
	        card_eval = "Vortex!"
	    },
        ability_name = "HCM Eye of the Storm",
        slug = "hcm_eye_of_the_storm",
        ability = { extra = { chips_gain = 6, current_average = 0, done = false} }
    },
    XPlayingClub7= {
    	loc = {
	        name = "Lethal Scoville",
	        text = {
	            "If your scoring hand {C:attention}lit{}",
	            "{C:attention}the fire{}, gain a random",
	            "{C:spectral}Spectral{} card.",
	            "When round ends, transform",
	            "back to the {C:attention}X-Playing Card{}."
	        },
	        summary = {
	        	"Light the fire",
	        	"to gain Spectrals."
	        },
	        card_eval = "PLAY FOR THE FIRE!"
	    },
        ability_name = "HCM Lethal Scoville",
        slug = "hcm_lethal_scoville",
        ability = { extra = { done = false} }
    },
    XPlayingClub8= {
    	loc = {
	        name = "Sinking Shadow",
	        text = {
	            "Cards that are played but",
	            "did not score add their",
	            "{C:attention}base{} {C:chips}chips{} to {C:mult}mult{} instead.",
	            "When round ends, transform",
	            "back to the {C:attention}X-Playing Card{}."
	        },
	        summary = {
	        	"Non-scoring cards when played",
	        	"add their chips to mult."
	        },
	        card_eval_pc = "Shadow..",
	        card_eval_jk = "Sinking Shadow!"
	    },
        ability_name = "HCM Sinking Shadow",
        slug = "hcm_sinking_shadow",
        ability = { extra = { mult_gain = 0, done = false} }
    },
    XPlayingClub9= {
    	loc = {
	        name = "Chlorophyll Overgrown",
	        text = {
	            "Any poker hand played is",
	            "considered as played {C:attention}#1#{}",
	            "times in the {C:attention}record book{}. ",
	            "When round ends, transform",
	            "back to the {C:attention}X-Playing Card{}."
	        },
	        summary = {
	        	"All poker hands are",
	        	"considered to have been",
	        	"played three times."
	        },
	        card_eval = "Chlorophyll Overgrown"
	    },
        ability_name = "HCM Chlorophyll Overgrown",
        slug = "hcm_chlorophyll_overgrown",
        ability = { extra = { number_gain = 3, done = false} }
    },
    XPlayingClub10= {
    	loc = {
	        name = "Million Volt",
	        text = {
	            "{C:attention}Steel{} Card will also act",
	            "like {C:attention}Gold{} Card and {C:attention}vice versa{}.",
	            "{C:red}(Only for {}{C:attention}enhancement{} {C:red}effects){}",
	            "When round ends, transform",
	            "back to the {C:attention}X-Playing Card{}."
	        },
	        summary = {
	        	"Steel and Gold cards act",
	        	"as eachother in addition."
	        },
	        card_eval_pc = "Conductive!",
	        card_eval_jk = "Million Volt!"
	    },
        ability_name = "HCM Million Volt",
        slug = "hcm_million_volt",
        ability = { extra = { h_dollars = 3, h_x_mult = 1.5, done = false} }
    },
    XPlayingClubJ= {
    	loc = {
	        name = "Coming Home",
	        text = {
	            "After playing hand or discard,",
	            "you always draw cards that",
	            "form your {C:attention}most played hand{}. ",
	            "{C:inactive}(Now Looking for{} {C:attention}#1#{}{C:inactive}...){}",
	            "When round ends, transform",
	            "back to the {C:attention}X-Playing Card{}."
	        },
	        summary = {
	        	"Play and discard both",
	        	"draw cards to make your",
	        	"most-played hand."
	        },
	        card_eval = "Coming Home!"
	    },
        ability_name = "HCM Coming Home",
        slug = "hcm_coming_home",
        ability = { extra = { best_hand = "High Card", done = false} }
    },
    XPlayingClubQ= {
    	loc = {
	        name = "Punker Viper",
	        text = {
	            "{C:attention}Shuffle{} all cards played or ",
	            "discarded {C:attention}back to the deck{}",
	            "{C:attention}after you play a hand{}.",
	            "When round ends, transform",
	            "back to the {C:attention}X-Playing Card{}."
	        },
	        summary = {
	        	"All cards return to the deck."
	        },
	        card_eval = "Punker Viper!"
	    },
        ability_name = "HCM Punker Viper",
        slug = "hcm_punker_viper",
        ability = { extra = { best_hand = "High Card", done = false} }
    },
    XPlayingClubK= {
    	loc = {
	        name = "Reaper's Hand",
	        text = {
	            "After playing a hand, destroy",
	            "all scoring cards and gain their base",
	            "{C:chips}chips{}, {C:mult}mult{} and {C:attention}enhancement{}.",
	            "{C:inactive}({}{C:chips}+#1#{} chips, {C:mult}+#2#{} mult, {X:mult,C:white}X#3#{} mult",
	            "and {C:attention}+#4#{} gold at end of round{C:inactive}){}",
	            "This X-Playing card is {C:attention}eternal{}."
	        },
	        summary = {
	        	"Devour cards to permanently",
	        	"gain their modifiers. This",
	        	"X-Playing card is eternal."
	        },
	        card_eval_lm = "Lucky Mult!",
	        card_eval_ld = "Lucky Dollars!",
	        card_eval_st = "Shattered!",
	        card_eval_pc = "Reap!",
	        card_eval_jk = "Reaper's Hand!"
        },
        ability_name = "HCM Reapers Hand",
        slug = "hcm_reapers_hand",
        ability = { extra = { chips_gain = 0, mult_gain = 0, xmult_gain = 1,
                            steel_cnt = 0, gold_payout = 0, lucky_cnt = 0,
                            glass_cnt = 0, gseal = 0, rseal = 0, bseal = 0,
                    done = false} }
    },
    XPlayingClubA= {
    	loc = {
	        name = "Life Binder",
	        text = {
	            "If your scoring hand contains {C:attention}exactly{}",
	            "{C:attention}#1# cards{} and they are of the same",
	            "{C:attention}enhancement{}, add an {C:clubs}Ace of Clubs{}",
	            "with that enhancement to your hand.",
	            "When round ends, transform",
	            "back to the {C:attention}X-Playing Card{}."
	        },
	        summary = {
	        	"Scoring five cards with matching",
	        	"enhancement adds a matching",
	        	"Ace of Clubs to your hand."
	        },
	        card_eval = "Life Binder!",
	        card_eval_pc = "Create!"
	    },
        ability_name = "HCM Life Binder",
        slug = "hcm_life_binder",
        ability = { extra = { done = false, cards_required = 5} }
    },
}