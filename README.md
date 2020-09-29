# Description
This script allows you to send messages to your discord server from your onset server


# Install

1. Drag and drop the discord folder in your packages folder.
2. Add it in the server config file.
3. In the discord package folder open script.lua and open up discord.
4. Go to your server's settings, then webhooks.

*You should see something like this*

![](https://i.gyazo.com/d2ed5688fcc20e1dbd50762c90e827a3.png)

5. Now press **Create Webhook**.

*You should see something like this*

![](https://i.gyazo.com/57cd569ac203c274384b586afd8a4727.png)

6. Feel free to change the name and the channel but before you click **Save**, please press **Copy**!

7. After you created the webhook, go back to your script.lua file and paste in your webhook URL in the **WebhookURL** variable and remove **https://discordapp.com**.

*You should have something like: /api/webhooks/random number/random string and numbers*

8. Now you are all set.

# How to use the embed feature

1.You can use the example that i pasted here but if u want to change something please go to https://discord.com/developers/docs/resources/channel#embed-object and follow the format!

*Here is an example of an embed*
```
-- Example of embed
local myEmbed = {
	["title"] = "Title",
	["description"] = "Description",
	["color"] = 65280,
	["fields"] = {
		{
			["name"] = "Field name 1",
			["value"] = "Field value 1",
			["inline"] = false
		},
		{
			["name"] = "Field name 2",
			["value"] = "Field value 2",
			["inline"] = false
		},
		{
			["name"] = "Field name 3",
			["value"] = "Field value 3",
			["inline"] = true
		},
		{
			["name"] = "Field name 4",
			["value"] = "Field value 4",
			["inline"] = true
		}
	},
	["footer"] = {
		["text"] = "Footer text"
	}
}
sendDiscordEmbed(myEmbed)
```
*This is how it looks*

![](https://i.gyazo.com/a1269129b47c456ccc92621262fda761.png)

**Don't forget to tag me in the onset discord server if you need help with embeds**

# If you need help feel free to tag me in the onset discord server 
*FlyingFork#9415*
