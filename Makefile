##
## EPITECH PROJECT, 2023
## myhunter
## File description:
## Makefile
##

NAME	        =	my_hunter

MAIN			=	./csfml_functions/csfml_image.c		\
					./csfml_functions/csfml_audio.c		\
                    ./csfml_functions/csfml_pixel.c		\
                    ./csfml_functions/csfml_text.c		\
                    ./game/audio.c						\
                    ./game/background.c					\
                    ./game/cursor.c						\
                    ./game/event.c						\
                    ./game/event_game_over.c			\
                    ./game/event_in_game.c				\
                    ./game/event_menu.c					\
                    ./game/event_monster.c				\
                    ./game/event_pause.c				\
                    ./game/event_setting.c				\
                    ./game/game.c						\
                    ./game/game_infos.c					\
                    ./game/game_over.c					\
                    ./game/help.c						\
                    ./game/in_game.c					\
                    ./game/load_setting.c				\
                    ./game/menu.c						\
                    ./game/monster.c					\
                    ./game/mouse_on.c					\
                    ./game/pause.c						\
                    ./game/save_setting.c				\
                    ./game/setting.c					\
                    ./game/sprite.c						\
                    ./game/text.c						\
                    main.c

SRC	=	./lib/my/my_array_of_array_len.c			\
		./lib/my/my_compute_factorial_rec.c			\
		./lib/my/my_compute_power_rec.c				\
		./lib/my/my_compute_square_root.c			\
		./lib/my/my_concat_params.c				\
		./lib/my/my_convert_base.c				\
		./lib/my/my_convert_base_unsigned.c			\
		./lib/my/my_find_prime_sup.c				\
		./lib/my/my_getnbr.c					\
		./lib/my/my_getnbr_base.c				\
		./lib/my/my_isneg.c					\
		./lib/my/my_is_prime.c					\
		./lib/my/my_params_to_array.c				\
		./lib/my/my_print_combn.c				\
		./lib/my/my_print_params.c				\
		./lib/my/my_put_nbr.c					\
		./lib/my/my_putchar.c					\
		./lib/my/my_putnbr_base.c				\
		./lib/my/my_putstr.c					\
		./lib/my/my_putstr_error.c				\
		./lib/my/my_putstr_sized.c				\
		./lib/my/my_rev_params.c				\
		./lib/my/my_revstr.c					\
		./lib/my/my_show_param_array.c				\
		./lib/my/my_show_word_array.c				\
		./lib/my/my_showmem.c					\
		./lib/my/my_showstr.c					\
		./lib/my/my_sort_int_array.c				\
		./lib/my/my_sort_params.c				\
		./lib/my/my_str_isalpha.c				\
		./lib/my/my_str_islower.c				\
		./lib/my/my_str_isnum.c					\
		./lib/my/my_str_isprintable.c				\
		./lib/my/my_str_isupper.c				\
		./lib/my/my_str_nbr.c					\
		./lib/my/my_str_nbr_base_unsigned.c			\
		./lib/my/my_str_nbr_base_long_long_int.c		\
		./lib/my/my_str_nbr_unsigned.c				\
		./lib/my/my_str_nbr_unsigned_long.c			\
		./lib/my/my_str_nbr_long_long.c				\
		./lib/my/my_str_nbr_size_t.c				\
		./lib/my/my_str_to_word_array.c				\
		./lib/my/my_strcapitalize.c		     		\
		./lib/my/my_strcat.c				    	\
		./lib/my/my_strcmp.c				    	\
		./lib/my/my_strcpy.c				    	\
		./lib/my/my_strdup.c					\
		./lib/my/my_strlen.c					\
		./lib/my/my_strlowcase.c				\
		./lib/my/my_strncat.c					\
		./lib/my/my_strncmp.c					\
		./lib/my/my_strncpy.c					\
		./lib/my/my_strstr.c					\
		./lib/my/my_strupcase.c					\
		./lib/my/my_swap.c					\
		./lib/my/flags/flag_c.c					\
		./lib/my/flags/flag_s.c					\
		./lib/my/flags/flag_d.c					\
		./lib/my/flags/flag_i.c					\
		./lib/my/flags/flag_p.c					\
		./lib/my/flags/flag_o.c					\
		./lib/my/flags/flag_u.c					\
		./lib/my/flags/flag_x.c					\
		./lib/my/flags/flag_bigx.c				\
		./lib/my/flags/flag_e.c					\
		./lib/my/flags/flag_bige.c				\
		./lib/my/flags/flag_f.c					\
		./lib/my/flags/flag_bigf.c				\
		./lib/my/flags/flag_g.c					\
		./lib/my/flags/flag_bigg.c				\
		./lib/my/flags/flag_a.c					\
		./lib/my/flags/flag_biga.c				\
		./lib/my/flags/flag_n.c					\
		./lib/my/flags/flag_m.c					\
		./lib/my/flags/flag_b.c					\
		./lib/my/flags/flag_bigs.c				\
		./lib/my/flags/flag_bigd.c				\
		./lib/my/flags/flag_percent.c				\
		./lib/my/flags/find_format.c				\
		./lib/my/flags/get_format.c				\
		./lib/my/flags/my_show_formating.c			\
		./lib/my/flags/sub_format_double.c			\
		./lib/my/flags/format_it_int.c				\
		./lib/my/flags/format_it_double.c			\
		./lib/my/flags/precise_it_int.c				\
		./lib/my/flags/precise_it_double.c			\
		./lib/my/flags/format_it_str.c				\
		./lib/my/flags/format_it_char.c				\
		./lib/my/flags/sub_format_int.c				\
		./lib/my/flags/sub_format_str.c				\
		./lib/my/flags/sub_format_char.c			\
		./lib/my/flags/specifier_int.c				\
		./lib/my/flags/specifier_base.c				\
		./lib/my/my_printf.c

MAIN-OBJ		=	$(MAIN:.c=.o)

OBJ				=	$(SRC:.c=.o)

CFLAGS 			+=	-Werror -Wextra -Wpedantic -g
CFLAGS 			+=	-I./include/

LDFLAGS 		+=	-L./lib/my -lmy 	\

CSFMLFLAGS		+=	-lcsfml-graphics 	\
					-lcsfml-system		\
					-lcsfml-window		\
					-lcsfml-audio

TEST_FLAGS 		+= 	--coverage -lcriterion -lgcov

all: libmy.a $(NAME)

libmy.a:
	@make -C./lib/my/

$(NAME): $(MAIN-OBJ)
	@gcc -o $(NAME) $(MAIN-OBJ) $(CFLAGS) $(LDFLAGS) $(CSFMLFLAGS)

run: re
	./$(NAME)

valgrind: fclean libmy.a $(MAIN-OBJ)
	@gcc -o $(NAME) $(MAIN-OBJ) -g3 $(CFLAGS) $(LDFLAGS) $(CSFMLFLAGS)
	@valgrind -s ./$(NAME)

valgrind-massif: fclean libmy.a $(MAIN-OBJ)
	@gcc -o $(NAME) $(MAIN-OBJ) -g3 $(CFLAGS) $(LDFLAGS) $(CSFMLFLAGS)
	@valgrind -s --tool=massif ./$(NAME)

clean:
	@rm -f $(OBJ)
	@rm -f $(MAIN-OBJ)

fclean: clean
	@make fclean -C./lib/my/
	rm -rf ./lib/libmy.a
	rm -rf libmy.a
	rm -rf a.out
	rm -rf unit_tests*
	rm -rf vgcore*
	rm -rf $(NAME)

re:	fclean all

unit_tests: re
	@gcc -o unit_tests $(SRC) tests/*.c $(CFLAGS) $(LDFLAGS) $(TEST_FLAGS)

tests_run: unit_tests
	@./unit_tests
	@gcovr
