[![Tests](https://github.com/why-not-try-calmer/notify-join/actions/workflows/python-app.yml/badge.svg)](https://github.com/why-not-try-calmer/notify-join/actions/workflows/python-app.yml)

## Overview

This bot provides a simple click-based verification workflow for your Telegram users. It requires that you have enabled the options `Only members can send messages` as well as `Use chat join requests`; only the latter is strictly necessary but goes hand in hand with the former. 

You can see [the bot](https://t.me/alert_me_and_my_chat_bot) in action [here](https://t.me/PopOS_en).

If you like the bot, feel free to use it in your own chats, fork this repository or even pay a coffee or a beer to the developer. At any rate please mind the LICENSE. 

## How it works

There are two modes of operation:

__Manual mode__
1. The user registers a "join request" against your chat by clicking the "request to join" button.
2. You admins accept / reject the request from any chat of their convenience provided it's where the bot forwards the join request.

__Auto mode__
1. The user registers a "join request" against your chat by clicking the "request to join" button. (same as before)
2. The bot opens a new private chat with the user. From there the user can confirm by using the button provided there. Your admins don't have anything to do.

## Commands

The bot uses exactly two commands in addition to `/help` (which aliases to `/start`):

- `/set <key1 val1 key2 val2 ...>`: configure the bot to your liking. Here is the list of possibles keys (the values are always text strings):
    - `chat_id`: the chat_id of the chat where the bot should listen for join requests (you cannot manually set this value)
    - `chat_url`: the full url (https://t.me/...) of the chat where the bot should listen for join requests (you can and __should__ set this value)
    - `mode <auto | manual>`: see the previous section for explanations
    - `helper_chat_id_`: chat_id of the chat to which the both should forward join requests notifications (only used in __manual__ mode)  
    - `verification_msg`: the message the bot should send to users trying to verify after landing a join requests. Naturall it's not convenient to set a long verification message in this way, so for that key it might be preferable to use a line break, as in:
    ```
    /set mode auto verification_message
    Sed ut perspiciatis unde omnis iste natus error sit voluptatem accusantium doloremque laudantium, totam rem aperiam, eaque ipsa quae ab illo inventore veritatis et quasi architecto beatae vitae dicta sunt explicabo. Nemo enim ipsam voluptatem quia voluptas sit aspernatur aut odit aut fugit, sed quia consequuntur magni dolores eos qui ratione voluptatem sequi nesciunt. Neque porro quisquam est, qui dolorem ipsum quia dolor sit amet, consectetur, adipisci velit, sed quia non numquam eius modi tempora incidunt ut labore et dolore magnam aliquam quaerat voluptatem. 
    ```
- `/reset` (no parameter): resets the bot to its default settings relative to chat(s) you manage.