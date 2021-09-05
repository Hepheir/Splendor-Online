DROP TABLE IF EXISTS card; -- DEBUG
DROP TABLE IF EXISTS coin; -- DEBUG
DROP TABLE IF EXISTS tile; -- DEBUG


CREATE TABLE IF NOT EXISTS tile (
    tile_id INTEGER PRIMARY KEY AUTOINCREMENT,
    tile_score INTEGER,
    tile_illustration TEXT,
    tile_cost_diamond INTEGER,
    tile_cost_sapphire INTEGER,
    tile_cost_emerald INTEGER,
    tile_cost_ruby INTEGER,
    tile_cost_onyx INTEGER
);

INSERT OR IGNORE INTO tile (
    tile_score,
    tile_illustration,
    tile_cost_diamond,
    tile_cost_sapphire,
    tile_cost_emerald,
    tile_cost_ruby,
    tile_cost_onyx
)
VALUES
    (3, 'noble.mary_stuart', 0, 0, 4, 4, 0),
    (3, 'noble.soliman_the_magniflcent', 0, 4, 4, 0, 0),
    (3, 'noble.noble_macchiavelli', 4, 4, 0, 0, 0),
    (3, 'noble.isabel_of_castille', 4, 0, 0, 0, 4),
    (3, 'noble.henri_viii', 0, 0, 0, 4, 4),
    (3, 'noble.elisabeth_of_austria', 3, 3, 0, 0, 3),
    (3, 'noble.francis_i_of_france', 0, 0, 3, 3, 3),
    (3, 'noble.charles_quint', 3, 0, 0, 3, 3),
    (3, 'noble.catherine_of_medicis', 0, 3, 3, 3, 0),
    (3, 'noble.anne_of_brittany', 3, 3, 3, 0, 0);



CREATE TABLE IF NOT EXISTS coin (
    coin_id INTEGER PRIMARY KEY AUTOINCREMENT,
    coin_type INTEGER
);

INSERT OR IGNORE INTO coin (coin_type)
VALUES
    (0), (0), (0), (0), (0),
    (1), (1), (1), (1), (1), (1), (1),
    (2), (2), (2), (2), (2), (2), (2),
    (3), (3), (3), (3), (3), (3), (3),
    (4), (4), (4), (4), (4), (4), (4),
    (5), (5), (5), (5), (5), (5), (5);


CREATE TABLE IF NOT EXISTS card (
    card_id INTEGER PRIMARY KEY AUTOINCREMENT,
    card_level INTEGER,
    card_score INTEGER,
    card_bonus TEXT,
    card_illustration TEXT,
    card_cost_diamond INTEGER,
    card_cost_sapphire INTEGER,
    card_cost_emerald INTEGER,
    card_cost_ruby INTEGER,
    card_cost_onyx INTEGER
);

INSERT OR IGNORE INTO card (card_level, card_score, card_bonus, card_illustration, card_cost_diamond, card_cost_sapphire, card_cost_emerald, card_cost_ruby, card_cost_onyx)
VALUES
    (1, 1, 'onyx', 'onyx.mine', 0, 4, 0, 0, 0),
    (1, 0, 'onyx', 'onyx.mine', 0, 0, 1, 3, 1),
    (1, 0, 'onyx', 'onyx.mine', 1, 1, 1, 1, 0),
    (1, 0, 'onyx', 'onyx.mine', 1, 2, 1, 1, 0),
    (1, 0, 'onyx', 'onyx.mine', 0, 0, 2, 1, 0),
    (1, 0, 'onyx', 'onyx.mine', 2, 2, 0, 1, 0),
    (1, 0, 'onyx', 'onyx.mine', 2, 0, 2, 0, 0),
    (1, 0, 'onyx', 'onyx.mine', 0, 0, 3, 0, 0),
    (1, 1, 'sapphire', 'sapphire.mine', 0, 0, 0, 4, 0),
    (1, 0, 'sapphire', 'sapphire.mine', 1, 0, 1, 1, 1),
    (1, 0, 'sapphire', 'sapphire.mine', 1, 0, 1, 2, 1),
    (1, 0, 'sapphire', 'sapphire.mine', 0, 0, 2, 0, 2),
    (1, 0, 'sapphire', 'sapphire.mine', 1, 0, 0, 0, 2),
    (1, 0, 'sapphire', 'sapphire.mine', 0, 0, 0, 0, 3),
    (1, 0, 'sapphire', 'sapphire.mine', 0, 1, 3, 1, 0),
    (1, 0, 'sapphire', 'sapphire.mine', 1, 0, 2, 2, 0),
    (1, 1, 'emerald', 'emerald.mine', 0, 0, 0, 0, 4),
    (1, 0, 'emerald', 'emerald.mine', 2, 1, 0, 0, 0),
    (1, 0, 'emerald', 'emerald.mine', 1, 3, 1, 0, 0),
    (1, 0, 'emerald', 'emerald.mine', 0, 2, 0, 2, 0),
    (1, 0, 'emerald', 'emerald.mine', 0, 0, 0, 3, 0),
    (1, 0, 'emerald', 'emerald.mine', 1, 1, 0, 1, 1),
    (1, 0, 'emerald', 'emerald.mine', 1, 1, 0, 1, 2),
    (1, 0, 'emerald', 'emerald.mine', 0, 1, 0, 2, 2),
    (1, 1, 'ruby', 'ruby.mine', 4, 0, 0, 0, 0),
    (1, 0, 'ruby', 'ruby.mine', 3, 0, 0, 0, 0),
    (1, 0, 'ruby', 'ruby.mine', 0, 2, 1, 0, 0),
    (1, 0, 'ruby', 'ruby.mine', 2, 0, 0, 2, 0),
    (1, 0, 'ruby', 'ruby.mine', 1, 1, 1, 0, 1),
    (1, 0, 'ruby', 'ruby.mine', 2, 1, 1, 0, 1),
    (1, 0, 'ruby', 'ruby.mine', 2, 0, 1, 0, 2),
    (1, 0, 'ruby', 'ruby.mine', 1, 0, 0, 1, 3),
    (1, 1, 'diamond', 'diamond.mine', 0, 0, 4, 0, 0),
    (1, 0, 'diamond', 'diamond.mine', 0, 3, 0, 0, 0),
    (1, 0, 'diamond', 'diamond.mine', 3, 1, 0, 0, 1),
    (1, 0, 'diamond', 'diamond.mine', 0, 2, 2, 0, 1),
    (1, 0, 'diamond', 'diamond.mine', 0, 1, 1, 1, 1),
    (1, 0, 'diamond', 'diamond.mine', 0, 1, 2, 1, 1),
    (1, 0, 'diamond', 'diamond.mine', 0, 0, 0, 2, 1),
    (1, 0, 'diamond', 'diamond.mine', 0, 2, 0, 0, 2),
    (2, 1, 'onyx', 'onyx.camels', 3, 2, 2, 0, 0),
    (2, 1, 'onyx', 'onyx.camels', 3, 0, 3, 0, 2),
    (2, 2, 'onyx', 'onyx.camels', 0, 1, 4, 2, 0),
    (2, 2, 'onyx', 'onyx.lapidary', 5, 0, 0, 0, 0),
    (2, 2, 'onyx', 'onyx.lapidary', 0, 0, 5, 3, 0),
    (2, 3, 'onyx', 'onyx.lapidary', 0, 0, 0, 0, 6),
    (2, 1, 'sapphire', 'sapphire.elephants', 0, 2, 2, 3, 0),
    (2, 1, 'sapphire', 'sapphire.elephants', 0, 2, 3, 0, 3),
    (2, 2, 'sapphire', 'sapphire.elephants', 5, 3, 0, 0, 0),
    (2, 2, 'sapphire', 'sapphire.lapidary', 0, 5, 0, 0, 0),
    (2, 2, 'sapphire', 'sapphire.lapidary', 2, 0, 0, 1, 4),
    (2, 3, 'sapphire', 'sapphire.lapidary', 0, 6, 0, 0, 0),
    (2, 2, 'emerald', 'emerald.carrack', 0, 5, 3, 0, 0),
    (2, 2, 'emerald', 'emerald.carrack', 0, 0, 5, 0, 0),
    (2, 3, 'emerald', 'emerald.carrack', 0, 0, 6, 0, 0),
    (2, 1, 'emerald', 'emerald.guy', 2, 3, 0, 0, 2),
    (2, 1, 'emerald', 'emerald.guy', 3, 0, 2, 3, 0),
    (2, 2, 'emerald', 'emerald.guy', 4, 2, 0, 0, 1),
    (2, 1, 'ruby', 'ruby.felucca', 0, 3, 0, 2, 3),
    (2, 1, 'ruby', 'ruby.felucca', 2, 0, 0, 2, 3),
    (2, 2, 'ruby', 'ruby.felucca', 1, 4, 2, 0, 0),
    (2, 2, 'ruby', 'ruby.lapidary', 0, 0, 0, 0, 5),
    (2, 2, 'ruby', 'ruby.lapidary', 3, 0, 0, 0, 5),
    (2, 3, 'ruby', 'ruby.lapidary', 0, 0, 0, 6, 0),
    (2, 2, 'diamond', 'diamond.lapidary', 0, 0, 0, 5, 3),
    (2, 2, 'diamond', 'diamond.lapidary', 0, 0, 0, 5, 0),
    (2, 3, 'diamond', 'diamond.lapidary', 6, 0, 0, 0, 0),
    (2, 1, 'diamond', 'diamond.people_in_snow', 0, 0, 3, 2, 2),
    (2, 1, 'diamond', 'diamond.people_in_snow', 2, 3, 0, 3, 0),
    (2, 2, 'diamond', 'diamond.people_in_snow', 0, 0, 1, 4, 2),
    (3, 3, 'onyx', 'onyx.street1', 3, 3, 5, 3, 0),
    (3, 5, 'onyx', 'onyx.street1', 0, 0, 0, 7, 3),
    (3, 4, 'onyx', 'onyx.street2', 0, 0, 3, 6, 3),
    (3, 4, 'onyx', 'onyx.street2', 0, 0, 0, 7, 0),
    (3, 4, 'sapphire', 'sapphire.diamant_shop', 6, 3, 0, 0, 3),
    (3, 5, 'sapphire', 'sapphire.diamant_shop', 7, 3, 0, 0, 0),
    (3, 3, 'sapphire', 'sapphire.venice', 3, 0, 3, 3, 5),
    (3, 4, 'sapphire', 'sapphire.venice', 7, 0, 0, 0, 0),
    (3, 4, 'emerald', 'emerald.bridge', 3, 6, 3, 0, 0),
    (3, 4, 'emerald', 'emerald.bridge', 0, 7, 0, 0, 0),
    (3, 3, 'emerald', 'emerald.timbered_house', 5, 3, 0, 3, 3),
    (3, 5, 'emerald', 'emerald.timbered_house', 0, 7, 3, 0, 0),
    (3, 4, 'ruby', 'ruby.building', 0, 3, 6, 3, 0),
    (3, 5, 'ruby', 'ruby.building', 0, 0, 7, 3, 0),
    (3, 3, 'ruby', 'ruby.equestrian_statue', 3, 5, 3, 0, 3),
    (3, 4, 'ruby', 'ruby.equestrian_statue', 0, 0, 7, 0, 0),
    (3, 4, 'diamond', 'diamond.gioielleria', 3, 0, 0, 3, 6),
    (3, 4, 'diamond', 'diamond.gioielleria', 0, 0, 0, 0, 7),
    (3, 3, 'diamond', 'diamond.building', 0, 3, 3, 5, 3),
    (3, 5, 'diamond', 'diamond.building', 3, 0, 0, 0, 7);
