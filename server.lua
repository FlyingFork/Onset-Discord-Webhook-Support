WebhookURL = "YOUR WEBHOOK LINK HERE; CHECK README TO SEE WHAT TO PUT IN HERE"

function sendDiscordMessage(Message)

    local body = ""
    body = body.."content="..url_encode(tostring(Message))

    local r = http_create()
	http_set_host(r, "discordapp.com")
	http_set_target(r, WebhookURL)
	http_set_verb(r, "post")
	http_set_timeout(r, 5000)
    http_set_field(r, "content-length", string.len(body))
    http_set_field(r, "content-type", "application/x-www-form-urlencoded; charset=utf-8")
    
    http_set_body(r, body)
	
	if http_send(r, function() return true end) == false then
		print("Discord message failed to send")
		http_destroy(r)
    end
end
AddFunctionExport("sendDiscordMessage", sendDiscordMessage)
