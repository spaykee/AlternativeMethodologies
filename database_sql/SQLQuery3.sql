ALTER TABLE [user] ADD CONSTRAINT fk_data_set FOREIGN KEY (data_set) REFERENCES user_data_set(id);

ALTER TABLE belbin_answer ADD CONSTRAINT fk_belbin_question_id FOREIGN KEY (question_id) REFERENCES belbin_question(id);
ALTER TABLE belbin_answer ADD CONSTRAINT fk_belbin_id FOREIGN KEY (belbin_id) REFERENCES belbin(id);

ALTER TABLE user_belbin ADD CONSTRAINT fk_user_belbin_id FOREIGN KEY ([user_id]) REFERENCES [user](id);
ALTER TABLE user_belbin ADD CONSTRAINT fk_user_belbin_question_id FOREIGN KEY (question_id) REFERENCES belbin_question(id);
ALTER TABLE user_belbin ADD CONSTRAINT fk_user_belbin_answer_id FOREIGN KEY (answer_id) REFERENCES belbin_answer(id);

ALTER TABLE user_data_set ADD CONSTRAINT fk_user_data_set_id FOREIGN KEY ([user_id]) REFERENCES [user](id);
ALTER TABLE user_data_set ADD CONSTRAINT fk_zodiac_id FOREIGN KEY (zodiac_id) REFERENCES zodiac(id);
ALTER TABLE user_data_set ADD CONSTRAINT fk_zodiac_ascendant_id FOREIGN KEY (zodiac_ascendant_id) REFERENCES zodiac_ascendant(id);
ALTER TABLE user_data_set ADD CONSTRAINT fk_numerology_id FOREIGN KEY (numerology) REFERENCES numerology(id);
ALTER TABLE user_data_set ADD CONSTRAINT fk_belbin_first_role_id FOREIGN KEY (belbin_first_role) REFERENCES belbin(id);
ALTER TABLE user_data_set ADD CONSTRAINT fk_belbin_second_role_id FOREIGN KEY (belbin_second_role) REFERENCES belbin(id);
ALTER TABLE user_data_set ADD CONSTRAINT fk_MBTI_first_role_id FOREIGN KEY (MBTI_first_role) REFERENCES mbti(id);
ALTER TABLE user_data_set ADD CONSTRAINT fk_MBTI_second_role_id FOREIGN KEY (MBTI_second_role) REFERENCES mbti(id);
ALTER TABLE user_data_set ADD CONSTRAINT fk_eneagram_first_role_id FOREIGN KEY (eneagram_first_role) REFERENCES enneagram(id);
ALTER TABLE user_data_set ADD CONSTRAINT fk_eneagram_second_role_id FOREIGN KEY (eneagram_second_role) REFERENCES enneagram(id);

ALTER TABLE zodiac_ascendant ADD CONSTRAINT fk_zodiac_zodiac_id FOREIGN KEY (zodiac) REFERENCES zodiac(id);
ALTER TABLE zodiac_ascendant ADD CONSTRAINT fk_ascendant_id FOREIGN KEY (ascendant) REFERENCES zodiac(id);

ALTER TABLE mbti_answer ADD CONSTRAINT fk_mbti_question_id FOREIGN KEY (question_id) REFERENCES mbti_question(id);

ALTER TABLE user_mbti ADD CONSTRAINT fk_user_mbti_id FOREIGN KEY ([user_id]) REFERENCES [user](id);
ALTER TABLE user_mbti ADD CONSTRAINT fk_user_mbti_question_id FOREIGN KEY (question_id) REFERENCES mbti_question(id);
ALTER TABLE user_mbti ADD CONSTRAINT fk_user_mbti_answer_id FOREIGN KEY (answer_id) REFERENCES mbti_answer(id);

ALTER TABLE enneagram_answer ADD CONSTRAINT fk_eneagram_question_id FOREIGN KEY (question_id) REFERENCES enneagram_question(id);

ALTER TABLE user_enneagram ADD CONSTRAINT fk_user_enneagram_id FOREIGN KEY ([user_id]) REFERENCES [user](id);
ALTER TABLE user_enneagram ADD CONSTRAINT fk_user_enneagram_question_id FOREIGN KEY (question_id) REFERENCES enneagram_question(id);
ALTER TABLE user_enneagram ADD CONSTRAINT fk_user_enneagram_answer_id FOREIGN KEY (answer_id) REFERENCES enneagram_answer(id);

ALTER TABLE user_team ADD CONSTRAINT fk_user_team_user_id FOREIGN KEY ([user_id]) REFERENCES [user](id);
ALTER TABLE user_team ADD CONSTRAINT fk_user_team_team_id FOREIGN KEY (team_id) REFERENCES team(id);