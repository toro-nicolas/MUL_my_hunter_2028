/*
** EPITECH PROJECT, 2023
** myhunter
** File description:
** The event.c
*/

#include "game.h"

static void manage_mouse_click(sfMouseButtonEvent event)
{
    my_printf("Mouse x=%d y=%d\n", event.x, event.y);
}

static void close_window(sfRenderWindow *window)
{
    sfRenderWindow_close(window);
}

void change_state(game_t *game, int state, int sound)
{
    game->old_state = game->state;
    game->state = state;
    game->state_changed = 1;
    if (sound == 1)
        play_sound(game, OPEN_MENU);
    else if (sound == 2)
        play_sound(game, CLOSE_MENU);
}

void set_button_id(game_t *game, int button_id)
{
    if (game->on_button != 2 && game->button_id == button_id)
        game->on_button = 1;
    game->button_id = button_id;
}

void analyse_events(game_t *game, sfEvent event)
{
    void (*event_functions[])(game_t *, sfEvent) = {&event_menu,
        &event_in_game, &event_pause, &event_setting, &event_game_over};

    if (event.type == sfEvtClosed)
        close_window(game->window);
    if (event.type == sfEvtMouseButtonPressed) {
        if (game->state == 0)
            game->on_button = 0;
    }
    event_functions[game->state](game, event);
}
