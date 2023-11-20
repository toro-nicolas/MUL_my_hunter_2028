/*
** EPITECH PROJECT, 2023
** myhunter
** File description:
** The text.c
*/

#include "game.h"

void create_text_list(game_t *game, sfText *text)
{
    text_list_t *text_list = malloc(sizeof(text_list_t));

    text_list->text = text;
    text_list->next = NULL;
    game->text_list = text_list;
}

void add_text(game_t *game, sfText *text)
{
    text_list_t *new_list;

    if (game->text_list == NULL) {
        create_text_list(game, text);
    } else {
        new_list = malloc(sizeof(text_list_t));
        new_list->text = text;
        new_list->next = game->text_list;
        game->text_list = new_list;
    }
}

void destroy_all_texts(game_t *game, text_list_t *text_list)
{
    if (game->text_list != NULL) {
        if (text_list->text != NULL) {
            sfFont_destroy((sfFont *)sfText_getFont
                (text_list->text));
            sfText_destroy(text_list->text);
            text_list->text = NULL;
        }
        if (text_list->next != NULL) {
            destroy_all_texts(game, text_list->next);
            free(text_list->next);
        }
        game->text_list = NULL;
    }
}

void display_texts(game_t *game)
{
    text_list_t *temp = game->text_list;

    if (temp != NULL) {
        sfRenderWindow_drawText(game->window, temp->text, NULL);
        while (temp->next != NULL) {
            temp = temp->next;
            sfRenderWindow_drawText(game->window, temp->text, NULL);
        }
    }
}