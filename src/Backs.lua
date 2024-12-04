SMODS.Sprite:new("b_xplaying", SMODS.findModByID("HighCardMod").path, "b_xplaying.png", 71, 95, "asset_atli"):register();

-- Reaper Deck
SMODS.Back {
	name = "Reaper's Deck",
	key = "reaper",
	pos = { x = 0, y = 0 },
	atlas = "b_xplaying",
	loc_txt = {
		name ="Reaper's Deck",
		text={
			"Start with a Deck",
			"full of {C:attention}Reaper's Hand{}",
		},
    },
	apply = function(self)
		G.E_MANAGER:add_event(Event({
			func = function()
                for _, card in ipairs(G.playing_cards) do
					card:set_base(G.P_CARDS["C_K"])
					card:set_x_playing(hcm_determine_xplaying_key(card))
				end
				return true
			end
		}))
	end
}

SMODS.Back {
	name = "X-Playing Deck",
	key = "XPlayingDeck",
	pos = { x = 0, y = 0 },
	atlas = "b_xplaying",
	config = { jokers = { "j_hcm_xplay" } },
	loc_txt = {
		name = "X-Playing Deck",
		text = {
            "Start run as a {C:red}Player{}",
            "(i.e. Start with {C:attention}52{}",
            "{C:attention}X-Playing Cards{} and",
            "the {C:attention}X-Playing Joker{})"
        }
	},
	apply = function(self)
		G.E_MANAGER:add_event(Event({
			func = function()
				
                -- Make entire deck X-playing cards
                for _, card in ipairs(G.playing_cards) do
					card:set_x_playing(hcm_determine_xplaying_key(card))
				end

				-- Add X-playing Joker
                local card = create_card('Joker', G.jokers, nil, nil, nil, nil, 'j_hcm_xplay', nil)
                card:set_edition(nil, nil, true)
                card:add_to_deck()
                G.jokers:emplace(card)

				return true
			end
		}))
	end
}