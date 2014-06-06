# -*- coding: utf-8 -*-
Plugin.create :meumeu do
on_appear do |ms|
ms.each do |m|
if m.message.to_s =~ /めう/
	unless m.message.to_s =~ /※Botです/
randomnum = rand(65535)
Service.primary.post(:message => "#{"@" + m.user.idname}　めうめう #{randomnum} ※Botです", :replyto => m)
	end
end
end
end
end
