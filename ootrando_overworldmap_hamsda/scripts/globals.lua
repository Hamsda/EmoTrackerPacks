VARIANT = Tracker.ActiveVariantUID
HAS_MAP = VARIANT ~= "var_minimalist" and (not VARIANT:find("itemsonly"))
HAS_KEYS = VARIANT:find("keysanity")
HAS_ER = VARIANT:find("entrance")
