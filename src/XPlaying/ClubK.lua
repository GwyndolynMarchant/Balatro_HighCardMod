SMODS.Jokers.j_hcm_reapers_hand.yes_pool_flag = 'X-Playing Card'
function SMODS.Jokers.j_hcm_reapers_hand.loc_def(card)
    return { card.ability.extra.chips_gain, card.ability.extra.mult_gain, card.ability.extra.xmult_gain, 
             card.ability.extra.gold_payout }
end
SMODS.Jokers.j_hcm_reapers_hand.calculate = function(self, context)
    if not context.blueprint then
        if context.end_of_round and not self.ability.extra.done then
            --end_xplay("XPlayingClubK")
            self.ability.extra.done = true
            if self.ability.extra.gold_payout and self.ability.extra.gold_payout > 0 then 
                ease_dollars(self.ability.extra.gold_payout)
            end
        end

        -- Helper functions
        function add_chips(amount) self.ability.extra.chips_gain = self.ability.extra.chips_gain + amount end
        function add_mult(amount) self.ability.extra.mult_gain = self.ability.extra.mult_gain + amount end
        function add_xmult(amount) self.ability.extra.xmult_gain = self.ability.extra.xmult_gain + amount end
        function compound_xmult(amount) self.ability.extra.xmult_gain = self.ability.extra.xmult_gain * amount end
        function add_gold(amount) self.ability.extra.gold_payout = self.ability.extra.gold_payout + amount end

        -- When destroying card
        if context.destroying_card then 
            local trigger_cnt = 1
            if context.destroying_card.seal and context.destroying_card.seal == 'Red' then trigger_cnt = 2 end
            --local trigger_cnt = self.ability.extra.rseal + 1
            for i = 1, trigger_cnt do

                -- Base card details
                add_chips(context.destroying_card.base.nominal + context.destroying_card.ability.perma_bonus)

                -- Check enhancement
                if     context.destroying_card.config.center == G.P_CENTERS.m_stone then add_chips(G.P_CENTERS.m_stone.config.bonus)
                elseif context.destroying_card.config.center == G.P_CENTERS.m_bonus then add_chips(G.P_CENTERS.m_bonus.config.bonus)
                elseif context.destroying_card.config.center == G.P_CENTERS.m_mult  then add_mult(G.P_CENTERS.m_mult.config.mult)
                elseif context.destroying_card.config.center == G.P_CENTERS.m_glass then
                    self.ability.extra.glass_cnt = self.ability.extra.glass_cnt + 1
                    add_xmult(G.P_CENTERS.m_glass.config.Xmult)
                elseif context.destroying_card.config.center == G.P_CENTERS.m_steel then compound_xmult(G.P_CENTERS.m_steel.config.h_x_mult)
                elseif context.destroying_card.config.center == G.P_CENTERS.m_gold then add_gold(G.P_CENTERS.m_gold.config.h_dollars)
                elseif context.destroying_card.config.center == G.P_CENTERS.m_lucky then
                    self.ability.extra.lucky_cnt = self.ability.extra.lucky_cnt + 1 
                -- TODO: Check Familiar
                -- -- TODO: Familiar.Charmed
                -- -- TODO: Familiar.Div
                -- -- TODO: Familiar.Gilded
                -- -- TODO: Familiar.Penalty
                -- TODO: JellyMod
                -- -- TODO: Jelly.m_bonus_rev
                -- -- TODO: Jelly.m_mult_rev
                -- -- TODO: Jelly.m_brass
                -- -- TODO: Jelly.m_fools_gold
                -- -- TODO: Jelly.m_blank
                -- -- TODO: Jelly.m_unlucky
                -- -- TODO: Jelly.m_wooden
                -- -- TODO: Jelly.m_coal
                -- TODO: Komakusa > Komakusa.ofuda
                -- TODO: Ortalab
                -- -- TODO: Ortalab.post
                -- -- TODO: Ortalab.bent
                -- -- TODO: Ortalab.index
                -- -- TODO: Ortalab.sand
                -- -- TODO: Ortalab.rusty
                -- -- TODO: Ortalab.ore
                -- -- TODO: Ortalab.iou
                -- -- TODO: Ortalab.recycled
                end

                -- Check editions
                if context.destroying_card.edition then
                    if     context.destroying_card.edition.holo       then add_mult(G.P_CENTERS.e_holo.config.extra)
                    elseif context.destroying_card.edition.foil       then add_chips(G.P_CENTERS.e_foil.config.extra)
                    elseif context.destroying_card.edition.polychrome then compound_xmult(G.P_CENTERS.e_polychrome.config.extra)
                    -- TODO: Ceres.Colorblind
                    -- TODO: Ceres.Sneaky
                    elseif context.destroying_card.edition.type == "cere_mint_condition" then add_gold(G.P_CENTERS.mint.config.p_dollars)
                    -- TODO: Bunco.Glitter (bunc_glitter) -> .config.Xchips
                    -- TODO: Bunco.Fluorescent (bunc_fluorescent)
                    -- TODO: Familiar.Aureate
                    -- TODO: Familiar.Speckled
                    -- TODO: Familiar.Static
                    -- TODO: Ortalab.anaglyphic
                    -- TODO: Ortalab.fluorescent
                    -- TODO: Ortalab.greyscale
                    -- TODO: Ortalab.overexposed
                    end
                end

                -- Check seal
                -- TODO: Actually implement seal devouring
                if context.destroying_card.seal then 
                    if context.destroying_card.seal == 'Gold' then 
                        self.ability.extra.gseal = self.ability.extra.gseal + 1
                    elseif context.destroying_card.seal == 'Red' then 
                        self.ability.extra.rseal = self.ability.extra.rseal + 1
                    elseif context.destroying_card.seal == 'Blue' then
                        self.ability.extra.bseal = self.ability.extra.bseal + 1
                    -- TODO: Ceres.Green (cere_green_seal)
                    -- TODO: Familiar.Familiar
                    -- TODO: Familiar.Gilded
                    -- TODO: Familiar.Maroon
                    -- TODO: Familiar.Sapphire
                    end
                end

                -- TODO: Check other X-Playing Cards
            end
            return true
        end

        if SMODS.end_calculate_context(context) then
            self.ability.extra.done = false
            for k, v in ipairs(context.scoring_hand) do
                card_eval_status_text(v, 'extra', nil, nil, nil, {message = G.localization.descriptions["Joker"]["j_hcm_reapers_hand"]["card_eval_pc"], Xmult_mod=1})
            end
            local lucky_multi = 0
            if self.ability.extra.lucky_cnt > 0 then
                for i = 1, self.ability.extra.lucky_cnt do
                    if pseudorandom('lucky_mult') < G.GAME.probabilities.normal / 5 then -- TODO: Find dynamic reference for odds
                        card_eval_status_text(self, 'extra', nil, nil, nil, {message = G.localization.descriptions["Joker"]["j_hcm_reapers_hand"]["card_eval_lm"], Xmult_mod=1})
                        lucky_multi = lucky_multi + 1
                    end
                    if pseudorandom('lucky_money') < G.GAME.probabilities.normal / 15 then -- TODO: Find dynamic reference for odds
                        card_eval_status_text(self, 'extra', nil, nil, nil, {message = G.localization.descriptions["Joker"]["j_hcm_reapers_hand"]["card_eval_ld"], Xmult_mod=1})
                        ease_dollars(G.P_CENTERS.m_lucky.config.p_dollars)
                        delay(0.3)
                    end
                end
            end
            G.E_MANAGER:add_event(Event({
                delay = 0.0,
                func = (function()
                        if self.ability.extra.glass_cnt > 0 then
                            local glass_shattered = 0
                            for i = 1, self.ability.extra.glass_cnt do
                                if pseudorandom('glass') < G.GAME.probabilities.normal / G.P_CENTERS.m_glass.config.extra then
                                    card_eval_status_text(self, 'extra', nil, nil, nil, {message = G.localization.descriptions["Joker"]["j_hcm_reapers_hand"]["card_eval_st"]})
                                    glass_shattered = glass_shattered + 1
                                end
                            end
                            while glass_shattered > 0 do
                                self.ability.extra.xmult_gain = self.ability.extra.xmult_gain - 2
                                self.ability.extra.glass_cnt = self.ability.extra.glass_cnt - 1
                                glass_shattered = glass_shattered - 1
                            end
                        end
                    return true
                end)}))
            return {
                message = G.localization.descriptions["Joker"]["j_hcm_reapers_hand"]["card_eval_jk"],
                chip_mod = self.ability.extra.chips_gain,
                mult_mod = self.ability.extra.mult_gain + lucky_multi * G.P_CENTERS.m_lucky.config.mult,
                Xmult_mod = self.ability.extra.xmult_gain,
                card = self
            }
        end
    end
end