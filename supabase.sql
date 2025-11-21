INSERT INTO public.users (id, email, name, password, role) 
VALUES ('00000000-0000-0000-0000-000000000000', 'system@evolution.com', 'System User', 'dummy_password', 'admin') 
ON CONFLICT (id) DO NOTHING;

CREATE UNIQUE INDEX IF NOT EXISTS messages_message_id_chat_id_unique \nON messages (message_id, chat_id);